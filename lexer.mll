(* lexer.mll -*- tuareg -*- *)
{
  open Parser
  open Lexing
  let get = Lexing.lexeme
  let pos = Lexing.lexeme_start_p
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

(* Tokens *)

rule token = parse
  | eol                         { token lexbuf }
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

  | '+'                         { PLUS }
  | '-'                         { MINUS }
  | '*'                         { MULT }
  | '/'                         { DIV }
  | '&'                         { BINAND }
  | '|'                         { BINOR }
  | '^'                         { BINXOR }
  | "&^"                        { BINANDNOT }
  | ">>"                        { RSHIFT }
  | "<<"                        { LSHIFT }
  | '%'                         { MOD }
  | "+="                        { PLUSEQ }
  | "-="                        { MINUSEQ }
  | "*="                        { MULTEQ }
  | "/="                        { DIVEQ }
  | "&="                        { BINANDEQ }
  | "|="                        { BINOREQ }
  | "^="                        { BINXOREQ }
  | "&^="                       { BINANDNOTEQ }
  | ">>="                       { RSHIFTEQ }
  | "<<="                       { LSHIFTEQ }
  | "%="                        { MODEQ }

  | "++"                        { PLUSPLUS }
  | "--"                        { MINUSMINUS }

  | "&&"                        { BOOLAND }
  | "||"                        { BOOLOR }
  | "!"                         { BOOLNOT }

  | '='                         { ASSIGN }
  | ":="                        { SHORTASSIGN }

  | "<-"                        { RECEIVE }

  | "=="                        { EQ }
  | '<'                         { LT }
  | "<="                        { LEQ }
  | '>'                         { GT }
  | ">="                        { GEQ }

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
  | "print"                     { PRINT }
  | "println"                   { PRINTLN }
  | "append"                    { APPEND }
  | "len"                       { LEN }
  | "cap"                       { CAP }

  | identifier                  { IDENTIFIER (get lexbuf) }

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




