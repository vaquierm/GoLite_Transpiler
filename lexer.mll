(* lexer.mll -*- tuareg -*- *)
{
  open Parser
  open Lexing

  let get = Lexing.lexeme
  let get_line_num buf = let p = buf.lex_curr_p in p.pos_lnum
  let get_char_end buf = let p = buf.lex_curr_p in p.pos_cnum - p.pos_bol
  let get_char_start buf = (get_char_end buf) - (String.length (get buf))
  
  (* The position of the last consumed token is kept*)
  let last_pos = ref Lexing.dummy_pos
  (* Last text *)
  let last_text = ref ""

  (* This function gets a text indicating the last place a token was accepted *)
  let get_error_pos_mgs () =
  let break_pos = !last_pos in 
      let break_line = break_pos.pos_lnum in
        let break_col_end = break_pos.pos_cnum - break_pos.pos_bol in
          let break_text = !last_text in
            let break_col_begin = break_col_end - (String.length break_text) in
              ("Line " ^ string_of_int break_line ^ ", charachters " ^ string_of_int break_col_begin ^ "-" ^ string_of_int break_col_end)

  (* This function just gets a message of the line number of the last accepted token *)
  let get_error_line_msg () =
  let break_pos = !last_pos in 
      let break_line = break_pos.pos_lnum in
        ("Line " ^ string_of_int break_line)
  
  (*
  This reference keeps track of the last token
  We can then use it to determine if we wwant to insert a semicilon in the sream
  *)
  let previous_token = ref (SEMICOLON 0)

  let update_pos buf =
    last_text := get buf;
    last_pos := buf.lex_curr_p

  (* Function to return tokens and set the last token to the one being returned *)
  let return token =
    previous_token := token;
    token

  (*
  Check if the token at the end of the line requires a semicolon
  inserted into the token stream
  *)
  let is_semicolon_required = function
    | RSQUARE _ | RPAR _ | RCURLY | BREAK | CONTINUE | FALLTHROUGH | RETURN
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
  | eol                         { let curr_line = (get_line_num lexbuf) in Lexing.new_line lexbuf; if is_semicolon_required !previous_token then return (SEMICOLON (curr_line)) else token lexbuf }
  | (' ' | tab)                 { token lexbuf }
  | eof                         { return EOF }

  | '('                         { update_pos lexbuf; return (LPAR (get_line_num lexbuf)) }
  | ')'                         { update_pos lexbuf; return (RPAR (get_line_num lexbuf)) }
  | '{'                         { update_pos lexbuf; return LCURLY }
  | '}'                         { update_pos lexbuf; return RCURLY }
  | '['                         { update_pos lexbuf; return (LSQUARE (get_line_num lexbuf)) }
  | ']'                         { update_pos lexbuf; return (RSQUARE (get_line_num lexbuf)) }
  | ':'                         { update_pos lexbuf; return COLON }
  | ';'                         { update_pos lexbuf; return (SEMICOLON (get_line_num lexbuf)) }       
  | ','                         { update_pos lexbuf; return COMMA }
  | '.'                         { update_pos lexbuf; return DOT }
  | "..."                       { update_pos lexbuf; return THREEDOT }

  | '+'                         { update_pos lexbuf; return (PLUS (get_line_num lexbuf)) }
  | '-'                         { update_pos lexbuf; return (MINUS (get_line_num lexbuf)) }
  | '*'                         { update_pos lexbuf; return (MULT (get_line_num lexbuf)) }
  | '/'                         { update_pos lexbuf; return (DIV (get_line_num lexbuf)) }
  | '&'                         { update_pos lexbuf; return (BINAND (get_line_num lexbuf)) }
  | '|'                         { update_pos lexbuf; return (BINOR (get_line_num lexbuf)) }
  | '^'                         { update_pos lexbuf; return (BINXOR (get_line_num lexbuf)) }
  | "&^"                        { update_pos lexbuf; return (BINANDNOT (get_line_num lexbuf)) }
  | ">>"                        { update_pos lexbuf; return (RSHIFT (get_line_num lexbuf)) }
  | "<<"                        { update_pos lexbuf; return (LSHIFT (get_line_num lexbuf)) }
  | '%'                         { update_pos lexbuf; return (MOD (get_line_num lexbuf)) }
  | "+="                        { update_pos lexbuf; return (PLUSEQ (get_line_num lexbuf)) }
  | "-="                        { update_pos lexbuf; return (MINUSEQ (get_line_num lexbuf)) }
  | "*="                        { update_pos lexbuf; return (MULTEQ (get_line_num lexbuf)) }
  | "/="                        { update_pos lexbuf; return (DIVEQ (get_line_num lexbuf)) }
  | "&="                        { update_pos lexbuf; return (BINANDEQ (get_line_num lexbuf)) }
  | "|="                        { update_pos lexbuf; return (BINOREQ (get_line_num lexbuf)) }
  | "^="                        { update_pos lexbuf; return (BINXOREQ (get_line_num lexbuf)) }
  | "&^="                       { update_pos lexbuf; return (BINANDNOTEQ (get_line_num lexbuf)) }
  | ">>="                       { update_pos lexbuf; return (RSHIFTEQ (get_line_num lexbuf)) }
  | "<<="                       { update_pos lexbuf; return (LSHIFTEQ (get_line_num lexbuf)) }
  | "%="                        { update_pos lexbuf; return (MODEQ (get_line_num lexbuf)) }

  | "++"                        { update_pos lexbuf; return (PLUSPLUS (get_line_num lexbuf)) }
  | "--"                        { update_pos lexbuf; return (MINUSMINUS (get_line_num lexbuf)) }

  | "&&"                        { update_pos lexbuf; return (BOOLAND (get_line_num lexbuf)) }
  | "||"                        { update_pos lexbuf; return (BOOLOR (get_line_num lexbuf)) }
  | "!"                         { update_pos lexbuf; return (BOOLNOT (get_line_num lexbuf)) }

  | '='                         { update_pos lexbuf; return (ASSIGN (get_line_num lexbuf)) }
  | ":="                        { update_pos lexbuf; return (SHORTASSIGN (get_line_num lexbuf)) }

  | "<-"                        { update_pos lexbuf; return (RECEIVE (get_line_num lexbuf)) }

  | "=="                        { update_pos lexbuf; return (EQ (get_line_num lexbuf)) }
  | "!="                        { update_pos lexbuf; return (NEQ (get_line_num lexbuf)) }
  | '<'                         { update_pos lexbuf; return (LT (get_line_num lexbuf)) }
  | "<="                        { update_pos lexbuf; return (LEQ (get_line_num lexbuf)) }
  | '>'                         { update_pos lexbuf; return (GT (get_line_num lexbuf)) }
  | ">="                        { update_pos lexbuf; return (GEQ (get_line_num lexbuf)) }

  | "break"                     { update_pos lexbuf; return BREAK }
  | "default"                   { update_pos lexbuf; return DEFAULT }
  | "func"                      { update_pos lexbuf; return FUNC }
  | "interface"                 { update_pos lexbuf; return (INTERFACE (get_line_num lexbuf)) }
  | "select"                    { update_pos lexbuf; return SELECT }
  | "case"                      { update_pos lexbuf; return CASE }
  | "defer"                     { update_pos lexbuf; return DEFER }
  | "go"                        { update_pos lexbuf; return GO }
  | "map"                       { update_pos lexbuf; return MAP }
  | "struct"                    { update_pos lexbuf; return STRUCT }
  | "chan"                      { update_pos lexbuf; return (CHAN (get_line_num lexbuf)) }
  | "else"                      { update_pos lexbuf; return ELSE }
  | "goto"                      { update_pos lexbuf; return GOTO }
  | "package"                   { update_pos lexbuf; return PACKAGE }
  | "switch"                    { update_pos lexbuf; return SWITCH }
  | "cons"                      { update_pos lexbuf; return CONS }
  | "fallthrough"               { update_pos lexbuf; return FALLTHROUGH }
  | "if"                        { update_pos lexbuf; return (IF (get_line_num lexbuf)) }
  | "range"                     { update_pos lexbuf; return RANGE }
  | "type"                      { update_pos lexbuf; return TYPE }
  | "continue"                  { update_pos lexbuf; return CONTINUE }
  | "for"                       { update_pos lexbuf; return (FOR (get_line_num lexbuf)) }
  | "import"                    { update_pos lexbuf; return (IMPORT (get_line_num lexbuf)) }
  | "return"                    { update_pos lexbuf; return RETURN }
  | "var"                       { update_pos lexbuf; return VAR }
  | "print"                     { update_pos lexbuf; return (PRINT (get_line_num lexbuf)) }
  | "println"                   { update_pos lexbuf; return (PRINTLN (get_line_num lexbuf)) }
  | "append"                    { update_pos lexbuf; return (APPEND (get_line_num lexbuf)) }
  | "len"                       { update_pos lexbuf; return (LEN (get_line_num lexbuf)) }
  | "cap"                       { update_pos lexbuf; return (CAP (get_line_num lexbuf)) }

  | "int"                       { update_pos lexbuf; return INTTYPE }
  | "float32"                   { update_pos lexbuf; return FLOATTYPE }
  | "rune"                      { update_pos lexbuf; return RUNETYPE }
  | "string"                    { update_pos lexbuf; return STRINGTYPE }
  | unsuportedType              { update_pos lexbuf; raise (Exceptions.UnsuportedError (("The type '" ^ get lexbuf ^ "' is unsuported in GoLite"), get_line_num lexbuf, Some (get_char_start lexbuf, get_char_end lexbuf))) }

  | identifier                  { update_pos lexbuf; return (IDENTIFIER (get lexbuf, get_line_num lexbuf)) }

  | ("//"_*eol)                 { update_pos lexbuf; let c = get lexbuf in return (COMMENT (String.trim(String.sub c 2 ((String.length c) - 2)))) }
  | ("/*"_*"*/")                { update_pos lexbuf; let c = get lexbuf in return (BLOCKCOMMENT (String.sub c 2 ((String.length c) - 4))) }

  | decIntLiteral               { update_pos lexbuf; return (DECINTLITERAL (get lexbuf)) }
  | binIntLiteral               { update_pos lexbuf; let c = get lexbuf in return (BININTLITERAL (String.sub c 2 ((String.length c) - 2))) }
  | octIntLiteral               { update_pos lexbuf; let c = get lexbuf in return (OCTINTLITERAL (String.sub c 2 ((String.length c) - 2))) }
  | hexIntLiteral               { update_pos lexbuf; let c = get lexbuf in return (HEXINTLITERAL (String.sub c 2 ((String.length c) - 2))) }

  | ("true" | "false")          { update_pos lexbuf; return (BOOLLITERAL (bool_of_string (get lexbuf))) }

  | floatLiteral                { update_pos lexbuf; return (FLOATLITERAL (float_of_string (get lexbuf))) }

  | runeLiteral                 { update_pos lexbuf; let c = get lexbuf in return (RUNELITERAL (String.sub c 1 ((String.length c) - 2))) }

  | '`'([^'''] | "\'")*'`'      { update_pos lexbuf; let c = get lexbuf in return (RAWSTRINGLITERAL (String.sub c 1 ((String.length c) - 2))) }
  | '"'([^'"'] | "\\\"")*'"'    { update_pos lexbuf; let c = get lexbuf in return (STRINGLITERAL (String.sub c 1 ((String.length c) - 2))) }

  | _                           { update_pos lexbuf; let p = lexbuf.lex_curr_p in raise (Exceptions.LexerError ("Line " ^ (string_of_int p.pos_lnum) ^ ", charachter " ^ (string_of_int (p.pos_cnum - p.pos_bol))  ^ "\nLexer Error: Unexpected char '" ^ (get lexbuf) ^ "'")) }



