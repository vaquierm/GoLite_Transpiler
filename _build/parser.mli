
(* The type of tokens. *)

type token = 
  | VAR
  | TYPE
  | THREEDOT
  | SWITCH
  | STRUCT
  | STRINGLITERAL of (string)
  | SHORTASSIGN
  | SEMICOLON
  | SELECT
  | RUNELITERAL of (string)
  | RSQUARE
  | RSHIFTEQ
  | RSHIFT
  | RPAR
  | RETURN
  | RECEIVE
  | RCURLY
  | RAWSTRINGLITERAL of (string)
  | RANGE
  | PRINTLN
  | PRINT
  | PLUSPLUS
  | PLUSEQ
  | PLUS
  | PACKAGE
  | OCTINTLITERAL of (string)
  | MULTEQ
  | MULT
  | MODEQ
  | MOD
  | MINUSMINUS
  | MINUSEQ
  | MINUS
  | MAP
  | LT
  | LSQUARE
  | LSHIFTEQ
  | LSHIFT
  | LPAR
  | LEQ
  | LEN
  | LCURLY
  | INTERFACE
  | IMPORT
  | IF
  | IDENTIFIER of (string)
  | HEXINTLITERAL of (string)
  | GT
  | GOTO
  | GO
  | GEQ
  | FUNC
  | FOR
  | FLOATLITERAL of (float)
  | FALLTHROUGH
  | EQ
  | EOF
  | ELSE
  | DOT
  | DIVEQ
  | DIV
  | DEFER
  | DEFAULT
  | DECINTLITERAL of (string)
  | CONTINUE
  | CONS
  | COMMENT of (string)
  | COMMA
  | COLON
  | CHAN
  | CASE
  | CAP
  | BREAK
  | BOOLOR
  | BOOLNOT
  | BOOLLITERAL of (bool)
  | BOOLAND
  | BLOCKCOMMENT of (string)
  | BINXOREQ
  | BINXOR
  | BINOREQ
  | BINOR
  | BININTLITERAL of (string)
  | BINANDNOTEQ
  | BINANDNOT
  | BINANDEQ
  | BINAND
  | ASSIGN
  | APPEND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp)
