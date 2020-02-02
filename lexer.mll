(* lexer.mll -*- tuareg -*- *)
{
  open Parser
  open Lexing
  let get = Lexing.lexeme
  let pos = Lexing.lexeme_start_p
  let get_line_num buf = let p = pos buf in p.pos_lnum

  (*
  This reference keeps track of the last token
  We can then use it to determine if we wwant to insert a semicilon in the sream
  *)
  let previous_token = ref (SEMICOLON 0)

  (* Function to return tokens and set the last token to the one being returned *)
  let return token =
    previous_token := token;
    token

  (*
  Check if the token at the end of the line requires a semicolon
  inserted into the token stream
  *)
  let is_semicolon_required = function
    | RSQUARE | RPAR | RCURLY | BREAK | CONTINUE | FALLTHROUGH | RETURN
    | DECINTLITERAL _ | BININTLITERAL _ | OCTINTLITERAL _ | HEXINTLITERAL _
    | BOOLLITERAL _ | FLOATLITERAL _ | RUNELITERAL _ | STRINGLITERAL _ | RAWSTRINGLITERAL _ 
    | PLUSPLUS _ | MINUSMINUS _ | IDENTIFIER _
    | INTTYPE | FLOATTYPE | STRINGTYPE | RUNETYPE -> true
    | _ -> false
}

(* Helpers *)

  let tab   = '\009'
  let cr    = '\013'
  let lf    = '\010'
  let eol   = cr | lf | cr lf
  let letter = ['a'-'z' 'A'-'Z']
  let decDigit = ['0'-'9']
  let binDigit = ['0'-'1']
  let octDigit = ['0'-'7']
  let hexDigit = decDigit | ['a'-'f' 'A'-'F']

  let identifier = letter | ((letter | '_')(letter | decDigit | '_')+)

  let octal_byte_value = '\\' octDigit octDigit octDigit
  let hex_byte_value   = '\\' "x" hexDigit hexDigit
  let little_u_value   = '\\' "u" hexDigit hexDigit hexDigit hexDigit
  let big_u_value      = '\\' "U" hexDigit hexDigit hexDigit hexDigit hexDigit hexDigit hexDigit hexDigit
  let escaped_char     = '\\' ( "a" | "b" | "f" | "n" | "r" | "t" | "v" | '\\' | "'" )
  let unicode_value    = _ | little_u_value | big_u_value | escaped_char
  let byte_value       = octal_byte_value | hex_byte_value
  let runeLiteral      = '''( unicode_value | byte_value )'''

  let decIntLiteral    = '0' | (['1'-'9'] decDigit*)
  let binIntLiteral    = "0b" ('0' | ('1' binDigit*))
  let octIntLiteral    = "0o" ('0' | (['1'-'7'] octDigit*))
  let hexIntLiteral    = "0x" ('0' | (['1'-'7'] hexDigit*))

  let floatLiteral     = ('0' | (['1'-'9'] decDigit*))?'.'decDigit*

  let unsuportedType = ("int8" | "int16" | "int32" | "int64" | "uint" | "uint8" | "uint16" | "uint32" | "uint64" | "uintptr" | "complex64" | "complex128" | "float64")

(* Tokens *)

rule token = parse
  | eol                         { if is_semicolon_required !previous_token then return (SEMICOLON (get_line_num lexbuf)) else token lexbuf }
  | (' ' | tab)                 { token lexbuf }
  | eof                         { return EOF }

  | '('                         { return LPAR }
  | ')'                         { return RPAR }
  | '{'                         { return LCURLY }
  | '}'                         { return RCURLY }
  | '['                         { return LSQUARE }
  | ']'                         { return RSQUARE }       
  | ':'                         { return COLON }
  | ';'                         { return (SEMICOLON (get_line_num lexbuf)) }       
  | ','                         { return COMMA }
  | '.'                         { return DOT }
  | "..."                       { return THREEDOT }

  | '+'                         { return (PLUS (get_line_num lexbuf)) }
  | '-'                         { return (MINUS (get_line_num lexbuf)) }
  | '*'                         { return (MULT (get_line_num lexbuf)) }
  | '/'                         { return (DIV (get_line_num lexbuf)) }
  | '&'                         { return (BINAND (get_line_num lexbuf)) }
  | '|'                         { return (BINOR (get_line_num lexbuf)) }
  | '^'                         { return (BINXOR (get_line_num lexbuf)) }
  | "&^"                        { return (BINANDNOT (get_line_num lexbuf)) }
  | ">>"                        { return (RSHIFT (get_line_num lexbuf)) }
  | "<<"                        { return (LSHIFT (get_line_num lexbuf)) }
  | '%'                         { return (MOD (get_line_num lexbuf)) }
  | "+="                        { return (PLUSEQ (get_line_num lexbuf)) }
  | "-="                        { return (MINUSEQ (get_line_num lexbuf)) }
  | "*="                        { return (MULTEQ (get_line_num lexbuf)) }
  | "/="                        { return (DIVEQ (get_line_num lexbuf)) }
  | "&="                        { return (BINANDEQ (get_line_num lexbuf)) }
  | "|="                        { return (BINOREQ (get_line_num lexbuf)) }
  | "^="                        { return (BINXOREQ (get_line_num lexbuf)) }
  | "&^="                       { return (BINANDNOTEQ (get_line_num lexbuf)) }
  | ">>="                       { return (RSHIFTEQ (get_line_num lexbuf)) }
  | "<<="                       { return (LSHIFTEQ (get_line_num lexbuf)) }
  | "%="                        { return (MODEQ (get_line_num lexbuf)) }

  | "++"                        { return (PLUSPLUS (get_line_num lexbuf)) }
  | "--"                        { return (MINUSMINUS (get_line_num lexbuf)) }

  | "&&"                        { return (BOOLAND (get_line_num lexbuf)) }
  | "||"                        { return (BOOLOR (get_line_num lexbuf)) }
  | "!"                         { return (BOOLNOT (get_line_num lexbuf)) }

  | '='                         { return (ASSIGN (get_line_num lexbuf)) }
  | ":="                        { return (SHORTASSIGN (get_line_num lexbuf)) }

  | "<-"                        { return (RECEIVE (get_line_num lexbuf)) }

  | "=="                        { return (EQ (get_line_num lexbuf)) }
  | "!="                        { return (NEQ (get_line_num lexbuf)) }
  | '<'                         { return (LT (get_line_num lexbuf)) }
  | "<="                        { return (LEQ (get_line_num lexbuf)) }
  | '>'                         { return (GT (get_line_num lexbuf)) }
  | ">="                        { return (GEQ (get_line_num lexbuf)) }

  | "break"                     { return BREAK }
  | "default"                   { return DEFAULT }
  | "func"                      { return FUNC }
  | "interface"                 { return INTERFACE }
  | "select"                    { return SELECT }
  | "case"                      { return CASE }
  | "defer"                     { return DEFER }
  | "go"                        { return GO }
  | "map"                       { return MAP }
  | "struct"                    { return STRUCT }
  | "chan"                      { return CHAN }
  | "else"                      { return ELSE }
  | "goto"                      { return GOTO }
  | "package"                   { return PACKAGE }
  | "switch"                    { return SWITCH }
  | "cons"                      { return CONS }
  | "fallthrough"               { return FALLTHROUGH }
  | "if"                        { return IF }
  | "range"                     { return RANGE }
  | "type"                      { return TYPE }
  | "continue"                  { return CONTINUE }
  | "for"                       { return FOR }
  | "import"                    { return IMPORT }
  | "return"                    { return RETURN }
  | "var"                       { return VAR }
  | "print"                     { return (PRINT (get_line_num lexbuf)) }
  | "println"                   { return (PRINTLN (get_line_num lexbuf)) }
  | "append"                    { return (APPEND (get_line_num lexbuf)) }
  | "len"                       { return (LEN (get_line_num lexbuf)) }
  | "cap"                       { return (CAP (get_line_num lexbuf)) }

  | "int"                       { return INTTYPE }
  | "float32"                   { return FLOATTYPE }
  | "rune"                      { return RUNETYPE }
  | "string"                    { return STRINGTYPE }
  | unsuportedType              { failwith ("The type " ^ get lexbuf ^ " is unsuported in GoLite") }

  | identifier                  { return (IDENTIFIER (get lexbuf, get_line_num lexbuf)) }

  | ("//"_*eol)                 { let c = get lexbuf in return (COMMENT (String.trim(String.sub c 2 ((String.length c) - 1)))) }
  | ("/*"_*"*/")                { let c = get lexbuf in return (BLOCKCOMMENT (String.sub c 2 ((String.length c) - 3))) }

  | decIntLiteral               { return (DECINTLITERAL (get lexbuf)) }
  | binIntLiteral               { let c = get lexbuf in return (BININTLITERAL (String.sub c 2 ((String.length c) - 1))) }
  | octIntLiteral               { let c = get lexbuf in return (OCTINTLITERAL (String.sub c 2 ((String.length c) - 1))) }
  | hexIntLiteral               { let c = get lexbuf in return (HEXINTLITERAL (String.sub c 2 ((String.length c) - 1))) }

  | ("true" | "false")          { return (BOOLLITERAL (bool_of_string (get lexbuf))) }

  | floatLiteral                { return (FLOATLITERAL (float_of_string (get lexbuf))) }

  | runeLiteral                 { let c = get lexbuf in return (RUNELITERAL (String.sub c 1 ((String.length c) - 2))) }

  | '`'([^'''] | "\'")*'`'      { let c = get lexbuf in return (RAWSTRINGLITERAL (String.sub c 1 ((String.length c) - 2))) }
  | '"'([^'"'] | "\\\"")*'"'    { let c = get lexbuf in return (STRINGLITERAL (String.sub c 1 ((String.length c) - 2))) }

  | _                           { let p = pos lexbuf in failwith ("Unexpected char '" ^ (get lexbuf) ^ "' in line " ^ (string_of_int p.pos_lnum) ^ " at position " ^ (string_of_int p.pos_bol)) }




