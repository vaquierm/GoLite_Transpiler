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
  let previous_token = ref SEMICOLON

  (*
  Check if the token at the end of the line requires a semicolon
  inserted into the token stream
  *)
  let is_semicolon_required = function
    | RSQUARE | RPAR | RCURLY | BREAK | CONTINUE | FALLTHROUGH | RETURN
    | DECINTLITERAL _ | BININTLITERAL _ | OCTINTLITERAL _ | HEXINTLITERAL _
    | BOOLLITERAL _ | FLOATLITERAL _ | RUNELITERAL _ | STRINGLITERAL _ | RAWSTRINGLITERAL _ 
    | PLUSPLUS _ | MINUSMINUS _ -> true
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
  | eol                         { if is_semicolon_required !previous_token then SEMICOLON else token lexbuf }
  | (' ' | tab)                 { token lexbuf }
  | eof                         { EOF }

  | '('                         { LPAR }
  | ')'                         { RPAR }
  | '{'                         { LCURLY }
  | '}'                         { RCURLY }
  | '['                         { LSQUARE }
  | ']'                         { RSQUARE }       
  | ':'                         { COLON }
  | ';'                         { SEMICOLON }       
  | ','                         { COMMA }
  | '.'                         { DOT }
  | "..."                       { THREEDOT }

  | '+'                         { PLUS (get_line_num lexbuf) }
  | '-'                         { MINUS (get_line_num lexbuf) }
  | '*'                         { MULT (get_line_num lexbuf) }
  | '/'                         { DIV (get_line_num lexbuf) }
  | '&'                         { BINAND (get_line_num lexbuf) }
  | '|'                         { BINOR (get_line_num lexbuf) }
  | '^'                         { BINXOR (get_line_num lexbuf) }
  | "&^"                        { BINANDNOT (get_line_num lexbuf) }
  | ">>"                        { RSHIFT (get_line_num lexbuf) }
  | "<<"                        { LSHIFT (get_line_num lexbuf) }
  | '%'                         { MOD (get_line_num lexbuf) }
  | "+="                        { PLUSEQ (get_line_num lexbuf) }
  | "-="                        { MINUSEQ (get_line_num lexbuf) }
  | "*="                        { MULTEQ (get_line_num lexbuf) }
  | "/="                        { DIVEQ (get_line_num lexbuf) }
  | "&="                        { BINANDEQ (get_line_num lexbuf) }
  | "|="                        { BINOREQ (get_line_num lexbuf) }
  | "^="                        { BINXOREQ (get_line_num lexbuf) }
  | "&^="                       { BINANDNOTEQ (get_line_num lexbuf) }
  | ">>="                       { RSHIFTEQ (get_line_num lexbuf) }
  | "<<="                       { LSHIFTEQ (get_line_num lexbuf) }
  | "%="                        { MODEQ (get_line_num lexbuf) }

  | "++"                        { PLUSPLUS (get_line_num lexbuf) }
  | "--"                        { MINUSMINUS (get_line_num lexbuf) }

  | "&&"                        { BOOLAND (get_line_num lexbuf) }
  | "||"                        { BOOLOR (get_line_num lexbuf) }
  | "!"                         { BOOLNOT (get_line_num lexbuf) }

  | '='                         { ASSIGN (get_line_num lexbuf) }
  | ":="                        { SHORTASSIGN (get_line_num lexbuf) }

  | "<-"                        { RECEIVE (get_line_num lexbuf) }

  | "=="                        { EQ (get_line_num lexbuf) }
  | '<'                         { LT (get_line_num lexbuf) }
  | "<="                        { LEQ (get_line_num lexbuf) }
  | '>'                         { GT (get_line_num lexbuf) }
  | ">="                        { GEQ (get_line_num lexbuf) }

  | "break"                     { BREAK }
  | "default"                   { DEFAULT }
  | "func"                      { FUNC }
  | "interface"                 { INTERFACE }
  | "select"                    { SELECT }
  | "case"                      { CASE }
  | "defer"                     { DEFER }
  | "go"                        { GO }
  | "map"                       { MAP }
  | "struct"                    { STRUCT }
  | "chan"                      { CHAN }
  | "else"                      { ELSE }
  | "goto"                      { GOTO }
  | "package"                   { PACKAGE }
  | "switch"                    { SWITCH }
  | "cons"                      { CONS }
  | "fallthrough"               { FALLTHROUGH }
  | "if"                        { IF }
  | "range"                     { RANGE }
  | "type"                      { TYPE }
  | "continue"                  { CONTINUE }
  | "for"                       { FOR }
  | "import"                    { IMPORT }
  | "return"                    { RETURN }
  | "var"                       { VAR }
  | "print"                     { PRINT (get_line_num lexbuf) }
  | "println"                   { PRINTLN (get_line_num lexbuf) }
  | "append"                    { APPEND (get_line_num lexbuf) }
  | "len"                       { LEN (get_line_num lexbuf) }
  | "cap"                       { CAP (get_line_num lexbuf) }

  | "int"                       { INTTYPE }
  | "float32"                   { FLOATTYPE }
  | "rune"                      { RUNETYPE }
  | "string"                    { STRINGTYPE }
  | unsuportedType              { failwith ("The type " ^ get lexbuf ^ " is unsuported in GoLite") }

  | identifier                  { IDENTIFIER (get lexbuf, get_line_num lexbuf) }

  | ("//"_*eol)                 { let c = get lexbuf in COMMENT (String.trim(String.sub c 2 ((String.length c) - 1))) }
  | ("/*"_*"*/")                { let c = get lexbuf in BLOCKCOMMENT (String.sub c 2 ((String.length c) - 3)) }

  | decIntLiteral               { DECINTLITERAL (get lexbuf) }
  | binIntLiteral               { let c = get lexbuf in BININTLITERAL (String.sub c 2 ((String.length c) - 1)) }
  | octIntLiteral               { let c = get lexbuf in OCTINTLITERAL (String.sub c 2 ((String.length c) - 1)) }
  | hexIntLiteral               { let c = get lexbuf in HEXINTLITERAL (String.sub c 2 ((String.length c) - 1)) }

  | ("true" | "false")          { BOOLLITERAL (bool_of_string (get lexbuf)) }

  | floatLiteral                { FLOATLITERAL (float_of_string (get lexbuf)) }

  | runeLiteral                 { let c = get lexbuf in RUNELITERAL (String.sub c 1 ((String.length c) - 2)) }

  | '`'([^'''] | "\'")*'`'      { let c = get lexbuf in RAWSTRINGLITERAL (String.sub c 1 ((String.length c) - 2)) }
  | '"'([^'"'] | "\\\"")*'"'    { let c = get lexbuf in STRINGLITERAL (String.sub c 1 ((String.length c) - 2)) }

  | _                           { let p = pos lexbuf in failwith ("Unexpected char '" ^ (get lexbuf) ^ "' in line " ^ (string_of_int p.pos_lnum) ^ " at position " ^ (string_of_int p.pos_bol)) }




