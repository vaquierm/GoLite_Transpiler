
(* The type of tokens. *)

type token = 
  | VAR
  | TYPE
  | THREEDOT
  | SWITCH
  | STRUCT
  | STRINGTYPE
  | STRINGLITERAL of (string)
  | SHORTASSIGN of (int)
  | SEMICOLON of (int)
  | SELECT
  | RUNETYPE
  | RUNELITERAL of (string)
  | RSQUARE of (int)
  | RSHIFTEQ of (int)
  | RSHIFT of (int)
  | RPAR of (int)
  | RETURN
  | RECEIVE of (int)
  | RCURLY
  | RAWSTRINGLITERAL of (string)
  | RANGE
  | PRINTLN of (int)
  | PRINT of (int)
  | PLUSPLUS of (int)
  | PLUSEQ of (int)
  | PLUS of (int)
  | PACKAGE
  | OCTINTLITERAL of (string)
  | NEQ of (int)
  | MULTEQ of (int)
  | MULT of (int)
  | MODEQ of (int)
  | MOD of (int)
  | MINUSMINUS of (int)
  | MINUSEQ of (int)
  | MINUS of (int)
  | MAP
  | LT of (int)
  | LSQUARE of (int)
  | LSHIFTEQ of (int)
  | LSHIFT of (int)
  | LPAR of (int)
  | LEQ of (int)
  | LEN of (int)
  | LCURLY
  | INTTYPE
  | INTERFACE of (int)
  | IMPORT of (int)
  | IF of (int)
  | IDENTIFIER of (string * int)
  | HEXINTLITERAL of (string)
  | GT of (int)
  | GOTO
  | GO
  | GEQ of (int)
  | FUNC
  | FOR of (int)
  | FLOATTYPE
  | FLOATLITERAL of (float)
  | FALLTHROUGH
  | EQ of (int)
  | EOF
  | ELSE
  | DOT
  | DIVEQ of (int)
  | DIV of (int)
  | DEFER
  | DEFAULT
  | DECINTLITERAL of (string)
  | CONTINUE
  | CONS
  | COMMENT of (string)
  | COMMA
  | COLON
  | CHAN of (int)
  | CASE
  | CAP of (int)
  | BREAK
  | BOOLTYPE
  | BOOLOR of (int)
  | BOOLNOT of (int)
  | BOOLLITERAL of (bool)
  | BOOLAND of (int)
  | BLOCKCOMMENT of (string)
  | BINXOREQ of (int)
  | BINXOR of (int)
  | BINOREQ of (int)
  | BINOR of (int)
  | BININTLITERAL of (string)
  | BINANDNOTEQ of (int)
  | BINANDNOT of (int)
  | BINANDEQ of (int)
  | BINAND of (int)
  | ASSIGN of (int)
  | APPEND of (int)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
