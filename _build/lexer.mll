(* lexer.mll -*- tuareg -*- *)
{
  open Parser
  let get = Lexing.lexeme
}

(* Helpers *)

  let tab   = '\009'
  let cr    = '\013'
  let lf    = '\010'
  let eol   = cr | lf | cr lf

(* Tokens *)

rule token = parse
  | eol                  { token lexbuf }
  | (' ' | tab)          { token lexbuf }
  | eof                  { EOF }
  | '+'                  { PLUS }
  | '-'                  { MINUS }
  | '*'                  { STAR }
  | '/'                  { SLASH }
  | '('                  { LPAR }
  | ')'                  { RPAR }
  | ('x' | 'y' | 'z')    { IDENTIFIER (get lexbuf) }

