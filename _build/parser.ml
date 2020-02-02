
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR
    | TYPE
    | THREEDOT
    | SWITCH
    | STRUCT
    | STRINGTYPE
    | STRINGLITERAL of (
# 43 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | SHORTASSIGN of (
# 20 "parser.mly"
      (int)
# 22 "parser.ml"
  )
    | SEMICOLON
    | SELECT
    | RUNETYPE
    | RUNELITERAL of (
# 42 "parser.mly"
       (string)
# 30 "parser.ml"
  )
    | RSQUARE
    | RSHIFTEQ of (
# 15 "parser.mly"
      (int)
# 36 "parser.ml"
  )
    | RSHIFT of (
# 14 "parser.mly"
      (int)
# 41 "parser.ml"
  )
    | RPAR
    | RETURN
    | RECEIVE of (
# 22 "parser.mly"
      (int)
# 48 "parser.ml"
  )
    | RCURLY
    | RAWSTRINGLITERAL of (
# 44 "parser.mly"
       (string)
# 54 "parser.ml"
  )
    | RANGE
    | PRINTLN of (
# 31 "parser.mly"
       (int)
# 60 "parser.ml"
  )
    | PRINT of (
# 31 "parser.mly"
       (int)
# 65 "parser.ml"
  )
    | PLUSPLUS of (
# 16 "parser.mly"
      (int)
# 70 "parser.ml"
  )
    | PLUSEQ of (
# 15 "parser.mly"
      (int)
# 75 "parser.ml"
  )
    | PLUS of (
# 14 "parser.mly"
      (int)
# 80 "parser.ml"
  )
    | PACKAGE
    | OCTINTLITERAL of (
# 37 "parser.mly"
       (string)
# 86 "parser.ml"
  )
    | NEQ of (
# 24 "parser.mly"
      (int)
# 91 "parser.ml"
  )
    | MULTEQ of (
# 15 "parser.mly"
      (int)
# 96 "parser.ml"
  )
    | MULT of (
# 14 "parser.mly"
      (int)
# 101 "parser.ml"
  )
    | MODEQ of (
# 15 "parser.mly"
      (int)
# 106 "parser.ml"
  )
    | MOD of (
# 14 "parser.mly"
      (int)
# 111 "parser.ml"
  )
    | MINUSMINUS of (
# 16 "parser.mly"
      (int)
# 116 "parser.ml"
  )
    | MINUSEQ of (
# 15 "parser.mly"
      (int)
# 121 "parser.ml"
  )
    | MINUS of (
# 14 "parser.mly"
      (int)
# 126 "parser.ml"
  )
    | MAP
    | LT of (
# 24 "parser.mly"
      (int)
# 132 "parser.ml"
  )
    | LSQUARE
    | LSHIFTEQ of (
# 15 "parser.mly"
      (int)
# 138 "parser.ml"
  )
    | LSHIFT of (
# 14 "parser.mly"
      (int)
# 143 "parser.ml"
  )
    | LPAR
    | LEQ of (
# 24 "parser.mly"
      (int)
# 149 "parser.ml"
  )
    | LEN of (
# 31 "parser.mly"
       (int)
# 154 "parser.ml"
  )
    | LCURLY
    | INTTYPE
    | INTERFACE
    | IMPORT
    | IF
    | IDENTIFIER of (
# 26 "parser.mly"
       (string * int)
# 164 "parser.ml"
  )
    | HEXINTLITERAL of (
# 39 "parser.mly"
       (string)
# 169 "parser.ml"
  )
    | GT of (
# 24 "parser.mly"
      (int)
# 174 "parser.ml"
  )
    | GOTO
    | GO
    | GEQ of (
# 24 "parser.mly"
      (int)
# 181 "parser.ml"
  )
    | FUNC
    | FOR
    | FLOATTYPE
    | FLOATLITERAL of (
# 41 "parser.mly"
       (float)
# 189 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 24 "parser.mly"
      (int)
# 195 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 15 "parser.mly"
      (int)
# 203 "parser.ml"
  )
    | DIV of (
# 14 "parser.mly"
      (int)
# 208 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 36 "parser.mly"
       (string)
# 215 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 33 "parser.mly"
       (string)
# 222 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN
    | CASE
    | CAP of (
# 31 "parser.mly"
       (int)
# 231 "parser.ml"
  )
    | BREAK
    | BOOLTYPE
    | BOOLOR of (
# 18 "parser.mly"
      (int)
# 238 "parser.ml"
  )
    | BOOLNOT of (
# 18 "parser.mly"
      (int)
# 243 "parser.ml"
  )
    | BOOLLITERAL of (
# 40 "parser.mly"
       (bool)
# 248 "parser.ml"
  )
    | BOOLAND of (
# 18 "parser.mly"
      (int)
# 253 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 34 "parser.mly"
       (string)
# 258 "parser.ml"
  )
    | BINXOREQ of (
# 15 "parser.mly"
      (int)
# 263 "parser.ml"
  )
    | BINXOR of (
# 14 "parser.mly"
      (int)
# 268 "parser.ml"
  )
    | BINOREQ of (
# 15 "parser.mly"
      (int)
# 273 "parser.ml"
  )
    | BINOR of (
# 14 "parser.mly"
      (int)
# 278 "parser.ml"
  )
    | BININTLITERAL of (
# 38 "parser.mly"
       (string)
# 283 "parser.ml"
  )
    | BINANDNOTEQ of (
# 15 "parser.mly"
      (int)
# 288 "parser.ml"
  )
    | BINANDNOT of (
# 14 "parser.mly"
      (int)
# 293 "parser.ml"
  )
    | BINANDEQ of (
# 15 "parser.mly"
      (int)
# 298 "parser.ml"
  )
    | BINAND of (
# 14 "parser.mly"
      (int)
# 303 "parser.ml"
  )
    | ASSIGN of (
# 20 "parser.mly"
      (int)
# 308 "parser.ml"
  )
    | APPEND of (
# 31 "parser.mly"
       (int)
# 313 "parser.ml"
  )
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState102
  | MenhirState95
  | MenhirState92
  | MenhirState90
  | MenhirState88
  | MenhirState86
  | MenhirState84
  | MenhirState82
  | MenhirState80
  | MenhirState78
  | MenhirState76
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState66
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState46
  | MenhirState45
  | MenhirState41
  | MenhirState39
  | MenhirState38
  | MenhirState29
  | MenhirState28
  | MenhirState25
  | MenhirState24
  | MenhirState22
  | MenhirState19
  | MenhirState14
  | MenhirState11
  | MenhirState9

# 1 "parser.mly"
   
  open Lexing


# 373 "parser.ml"

let rec _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 378 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 417 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 24 "parser.mly"
      (int)
# 456 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 495 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 534 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 573 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 24 "parser.mly"
      (int)
# 612 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 651 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 24 "parser.mly"
      (int)
# 690 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 24 "parser.mly"
      (int)
# 729 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 24 "parser.mly"
      (int)
# 768 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 24 "parser.mly"
      (int)
# 807 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 846 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run92 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 18 "parser.mly"
      (int)
# 885 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 924 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 963 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 1002 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 1041 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_goto_ident_list : _menhir_env -> 'ttv_tail -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState19 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 26 "parser.mly"
       (string * int)
# 1100 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (string list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (string list) = 
# 114 "parser.mly"
                                  ( (fst _3)::_1 )
# 1107 "parser.ml"
             in
            _menhir_goto_ident_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | FLOATTYPE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | IDENTIFIER _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | INTERFACE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INTTYPE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LSQUARE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MAP ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MULT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | RUNETYPE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | STRINGTYPE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | STRUCT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 14 "parser.mly"
      (int)
# 1153 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 140 "parser.mly"
                                            ( Ast.Urinary (Ast.UBinNOT, _2, _1) )
# 1158 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 18 "parser.mly"
      (int)
# 1167 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 139 "parser.mly"
                                            ( Ast.Urinary (Ast.BoolNOT, _2, _1) )
# 1172 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 14 "parser.mly"
      (int)
# 1181 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 138 "parser.mly"
                                            ( Ast.Urinary (Ast.UMinus, _2, _1) )
# 1186 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 14 "parser.mly"
      (int)
# 1195 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 137 "parser.mly"
                                            ( _2 )
# 1200 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 22 "parser.mly"
      (int)
# 1209 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 141 "parser.mly"
                                            ( failwith ("Line: " ^ (string_of_int _1) ^ " Go lite does not support the type <-") )
# 1214 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BININTLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | BINXOR _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | BOOLNOT _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | DECINTLITERAL _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | FLOATLITERAL _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | HEXINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | OCTINTLITERAL _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | PLUS _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | RECEIVE _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | RUNELITERAL _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | STRINGLITERAL _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | FLOATTYPE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | IDENTIFIER _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | INTERFACE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | INTTYPE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LPAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LSQUARE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | MAP ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | MULT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | RUNETYPE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | STRINGTYPE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | STRUCT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1345 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 132 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 1350 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1365 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 126 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 1370 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1379 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 127 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 1384 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | NEQ _ | PLUS _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1415 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 124 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 1420 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1455 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 134 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 1460 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1483 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 133 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 1488 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1511 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 130 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 1516 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1539 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 129 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 1544 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1567 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 131 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 1572 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1595 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 128 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 1600 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 24 "parser.mly"
      (int)
# 1641 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 143 "parser.mly"
                                            ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 1646 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | NEQ _ | PLUS _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 1683 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 125 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 1688 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 24 "parser.mly"
      (int)
# 1729 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 144 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 1734 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 24 "parser.mly"
      (int)
# 1775 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 146 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 1780 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 24 "parser.mly"
      (int)
# 1821 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 145 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 1826 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 24 "parser.mly"
      (int)
# 1867 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 147 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 1872 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 24 "parser.mly"
      (int)
# 1913 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 142 "parser.mly"
                                            ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 1918 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 18 "parser.mly"
      (int)
# 1973 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 136 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 1978 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 18 "parser.mly"
      (int)
# 2031 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 135 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 2036 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.top_level_declaration) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.top_level_declaration)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_declaration list))) = _menhir_stack in
        let _v : (Ast.top_level_declaration list) = 
# 83 "parser.mly"
                          ( _2::_1 )
# 2064 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.top_level_declaration)) = _v in
        let _1 = () in
        let _v : (Ast.top_level_declaration list) = 
# 78 "parser.mly"
                                        ( [_2] )
# 2075 "parser.ml"
         in
        _menhir_goto_type_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_field_decls : _menhir_env -> 'ttv_tail -> ((string * Ast.typeT) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), (_3 : ((string * Ast.typeT) list))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 98 "parser.mly"
                                                ( Ast.StructType _3 )
# 2099 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | CHAN | COMMA | FLOATTYPE | IDENTIFIER _ | INTERFACE | INTTYPE | LPAR | LSQUARE | MAP | MULT _ | RUNETYPE | STRINGTYPE | STRUCT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (string list) = 
# 113 "parser.mly"
                                  ( [] )
# 2107 "parser.ml"
         in
        _menhir_goto_ident_list _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "parser.mly"
       (string)
# 2120 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 43 "parser.mly"
       (string)
# 2128 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 123 "parser.mly"
                                            ( Ast.StrLit (_1) )
# 2133 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (string)
# 2140 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (string)
# 2148 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 122 "parser.mly"
                                            ( Ast.RuneLit (_1) )
# 2153 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
      (int)
# 2160 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 2199 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "parser.mly"
       (string)
# 2238 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 2246 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 120 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Oct) )
# 2251 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 2258 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "parser.mly"
       (string)
# 2297 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 39 "parser.mly"
       (string)
# 2305 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 121 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Hex) )
# 2310 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "parser.mly"
       (float)
# 2317 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 41 "parser.mly"
       (float)
# 2325 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 117 "parser.mly"
                                            ( Ast.FloatLit (_1) )
# 2330 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "parser.mly"
       (string)
# 2337 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 36 "parser.mly"
       (string)
# 2345 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 118 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Dec) )
# 2350 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "parser.mly"
      (int)
# 2357 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 2396 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "parser.mly"
       (string)
# 2435 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 2443 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 119 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Bin) )
# 2448 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_typeT : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.typeT) = 
# 90 "parser.mly"
                      ( _2 )
# 2471 "parser.ml"
             in
            _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 93 "parser.mly"
                          ( Ast.SliceType _3 )
# 2489 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_2 : (Ast.exp))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 92 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 2501 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | FLOATTYPE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | IDENTIFIER _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | INTERFACE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | INTTYPE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LPAR ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | LSQUARE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | MAP ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | MULT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | RUNETYPE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | STRINGTYPE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | STRUCT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_3 : (Ast.typeT))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 95 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 2558 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 14 "parser.mly"
      (int)
# 2567 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 94 "parser.mly"
                      ( Ast.PointerType _2 )
# 2572 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _4 = () in
            let _v : ((string * Ast.typeT) list) = 
# 106 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 2593 "parser.ml"
             in
            _menhir_goto_field_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 26 "parser.mly"
       (string * int)
# 2614 "parser.ml"
            ))), _, (_2 : (
# 20 "parser.mly"
      (int)
# 2618 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _4 = () in
            let _v : (Ast.top_level_declaration) = 
# 86 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 2624 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 26 "parser.mly"
       (string * int)
# 2645 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _3 = () in
            let _v : (Ast.top_level_declaration) = 
# 87 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1)) )
# 2651 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> (Ast.top_level_declaration list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.top_level_declaration list)) = _v in
    let (_menhir_stack, (_1 : (Ast.top_level_declaration list))) = _menhir_stack in
    let _v : (Ast.top_level_declaration list) = 
# 75 "parser.mly"
                               ( _2 @ _1 )
# 2672 "parser.ml"
     in
    _menhir_goto_top_level_decls _menhir_env _menhir_stack _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 105 "parser.mly"
                    ( [] )
# 2689 "parser.ml"
         in
        _menhir_goto_field_decls _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 101 "parser.mly"
                      ( Ast.StrType )
# 2707 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 102 "parser.mly"
                      ( Ast.RuneType )
# 2719 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 2726 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | FLOATTYPE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | IDENTIFIER _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | INTERFACE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | INTTYPE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LPAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LSQUARE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MAP ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MULT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | RUNETYPE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | STRINGTYPE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | STRUCT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | FLOATTYPE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | IDENTIFIER _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | INTERFACE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | INTTYPE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | LPAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | LSQUARE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | MAP ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | MULT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | RUNETYPE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | STRINGTYPE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | STRUCT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | BINXOR _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | BOOLNOT _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | DECINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | FLOATLITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | HEXINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | OCTINTLITERAL _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | PLUS _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | RECEIVE _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | RSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState25 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FLOATTYPE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | IDENTIFIER _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | INTERFACE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | INTTYPE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LPAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LSQUARE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MAP ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MULT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | RUNETYPE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | STRINGTYPE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | STRUCT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | RUNELITERAL _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | STRINGLITERAL _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | FLOATTYPE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | IDENTIFIER _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | INTERFACE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | INTTYPE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LSQUARE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MAP ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MULT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | RUNETYPE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | STRINGTYPE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | STRUCT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 99 "parser.mly"
                      ( Ast.IntType )
# 2921 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 96 "parser.mly"
                      ( failwith "Interface types are not suppoted in GoLite" )
# 2933 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
       (string * int)
# 2940 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 26 "parser.mly"
       (string * int)
# 2948 "parser.ml"
    )) = _v in
    let _v : (Ast.typeT) = 
# 91 "parser.mly"
                      ( failwith "TODO keep track of underlying types" )
# 2953 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 100 "parser.mly"
                      ( Ast.FloatType )
# 2965 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 97 "parser.mly"
                      ( failwith "Channel types are not suppoted in GoLite" )
# 2977 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_type_specs : _menhir_env -> 'ttv_tail -> (Ast.top_level_declaration list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | RPAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState11 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _), (_3 : (Ast.top_level_declaration list))), _) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.top_level_declaration list) = 
# 79 "parser.mly"
                                        ( _3 )
# 3155 "parser.ml"
             in
            _menhir_goto_type_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
       (string * int)
# 3172 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState14 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | FLOATTYPE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | IDENTIFIER _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | INTERFACE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | INTTYPE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LPAR ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LSQUARE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MAP ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MULT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | RUNETYPE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | STRINGTYPE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | STRUCT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
    | CHAN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FLOATTYPE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IDENTIFIER _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | INTERFACE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INTTYPE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAR ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LSQUARE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | MAP ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | MULT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | RUNETYPE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | STRINGTYPE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | STRUCT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_goto_top_level_decls : _menhir_env -> 'ttv_tail -> (Ast.top_level_declaration list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, (_1 : (Ast.package_clause))), (_2 : (unit))), (_3 : (Ast.top_level_declaration list))) = _menhir_stack in
        let _4 = () in
        let _v : (
# 60 "parser.mly"
       (Ast.package_clause)
# 3258 "parser.ml"
        ) = 
# 64 "parser.mly"
                                                              ( _1 )
# 3262 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 60 "parser.mly"
       (Ast.package_clause)
# 3269 "parser.ml"
        )) = _v in
        Obj.magic _1
    | TYPE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | LPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState9 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ast.top_level_declaration list) = 
# 82 "parser.mly"
                          ( [] )
# 3288 "parser.ml"
             in
            _menhir_goto_type_specs _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_import_decls : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.top_level_declaration list) = 
# 74 "parser.mly"
                        ( [] )
# 3309 "parser.ml"
     in
    _menhir_goto_top_level_decls _menhir_env _menhir_stack _v

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and start : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 60 "parser.mly"
       (Ast.package_clause)
# 3328 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | PACKAGE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, (_2 : (
# 26 "parser.mly"
       (string * int)
# 3360 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 67 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 3367 "parser.ml"
                 in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IMPORT ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _1 = () in
                    let _v : (unit) = 
# 71 "parser.mly"
                        ( failwith "Packages are not supported in GoLite.")
# 3382 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | TYPE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 70 "parser.mly"
                        ( () )
# 3390 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    raise _eRR)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 219 "/usr/share/menhir/standard.mly"
  


# 3418 "parser.ml"
