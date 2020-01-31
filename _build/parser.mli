
(* The type of tokens. *)

type token = 
  | STAR
  | SLASH
  | RPAR
  | PLUS
  | MINUS
  | LPAR
  | IDENTIFIER of (string)
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp)
