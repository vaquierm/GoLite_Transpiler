
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
# 44 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | SHORTASSIGN of (
# 21 "parser.mly"
      (int)
# 22 "parser.ml"
  )
    | SEMICOLON of (
# 11 "parser.mly"
      (int)
# 27 "parser.ml"
  )
    | SELECT
    | RUNETYPE
    | RUNELITERAL of (
# 43 "parser.mly"
       (string)
# 34 "parser.ml"
  )
    | RSQUARE
    | RSHIFTEQ of (
# 16 "parser.mly"
      (int)
# 40 "parser.ml"
  )
    | RSHIFT of (
# 15 "parser.mly"
      (int)
# 45 "parser.ml"
  )
    | RPAR
    | RETURN
    | RECEIVE of (
# 23 "parser.mly"
      (int)
# 52 "parser.ml"
  )
    | RCURLY
    | RAWSTRINGLITERAL of (
# 45 "parser.mly"
       (string)
# 58 "parser.ml"
  )
    | RANGE
    | PRINTLN of (
# 32 "parser.mly"
       (int)
# 64 "parser.ml"
  )
    | PRINT of (
# 32 "parser.mly"
       (int)
# 69 "parser.ml"
  )
    | PLUSPLUS of (
# 17 "parser.mly"
      (int)
# 74 "parser.ml"
  )
    | PLUSEQ of (
# 16 "parser.mly"
      (int)
# 79 "parser.ml"
  )
    | PLUS of (
# 15 "parser.mly"
      (int)
# 84 "parser.ml"
  )
    | PACKAGE
    | OCTINTLITERAL of (
# 38 "parser.mly"
       (string)
# 90 "parser.ml"
  )
    | NEQ of (
# 25 "parser.mly"
      (int)
# 95 "parser.ml"
  )
    | MULTEQ of (
# 16 "parser.mly"
      (int)
# 100 "parser.ml"
  )
    | MULT of (
# 15 "parser.mly"
      (int)
# 105 "parser.ml"
  )
    | MODEQ of (
# 16 "parser.mly"
      (int)
# 110 "parser.ml"
  )
    | MOD of (
# 15 "parser.mly"
      (int)
# 115 "parser.ml"
  )
    | MINUSMINUS of (
# 17 "parser.mly"
      (int)
# 120 "parser.ml"
  )
    | MINUSEQ of (
# 16 "parser.mly"
      (int)
# 125 "parser.ml"
  )
    | MINUS of (
# 15 "parser.mly"
      (int)
# 130 "parser.ml"
  )
    | MAP
    | LT of (
# 25 "parser.mly"
      (int)
# 136 "parser.ml"
  )
    | LSQUARE
    | LSHIFTEQ of (
# 16 "parser.mly"
      (int)
# 142 "parser.ml"
  )
    | LSHIFT of (
# 15 "parser.mly"
      (int)
# 147 "parser.ml"
  )
    | LPAR
    | LEQ of (
# 25 "parser.mly"
      (int)
# 153 "parser.ml"
  )
    | LEN of (
# 32 "parser.mly"
       (int)
# 158 "parser.ml"
  )
    | LCURLY
    | INTTYPE
    | INTERFACE
    | IMPORT
    | IF
    | IDENTIFIER of (
# 27 "parser.mly"
       (string * int)
# 168 "parser.ml"
  )
    | HEXINTLITERAL of (
# 40 "parser.mly"
       (string)
# 173 "parser.ml"
  )
    | GT of (
# 25 "parser.mly"
      (int)
# 178 "parser.ml"
  )
    | GOTO
    | GO
    | GEQ of (
# 25 "parser.mly"
      (int)
# 185 "parser.ml"
  )
    | FUNC
    | FOR
    | FLOATTYPE
    | FLOATLITERAL of (
# 42 "parser.mly"
       (float)
# 193 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 25 "parser.mly"
      (int)
# 199 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 16 "parser.mly"
      (int)
# 207 "parser.ml"
  )
    | DIV of (
# 15 "parser.mly"
      (int)
# 212 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 37 "parser.mly"
       (string)
# 219 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 34 "parser.mly"
       (string)
# 226 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN
    | CASE
    | CAP of (
# 32 "parser.mly"
       (int)
# 235 "parser.ml"
  )
    | BREAK
    | BOOLTYPE
    | BOOLOR of (
# 19 "parser.mly"
      (int)
# 242 "parser.ml"
  )
    | BOOLNOT of (
# 19 "parser.mly"
      (int)
# 247 "parser.ml"
  )
    | BOOLLITERAL of (
# 41 "parser.mly"
       (bool)
# 252 "parser.ml"
  )
    | BOOLAND of (
# 19 "parser.mly"
      (int)
# 257 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 35 "parser.mly"
       (string)
# 262 "parser.ml"
  )
    | BINXOREQ of (
# 16 "parser.mly"
      (int)
# 267 "parser.ml"
  )
    | BINXOR of (
# 15 "parser.mly"
      (int)
# 272 "parser.ml"
  )
    | BINOREQ of (
# 16 "parser.mly"
      (int)
# 277 "parser.ml"
  )
    | BINOR of (
# 15 "parser.mly"
      (int)
# 282 "parser.ml"
  )
    | BININTLITERAL of (
# 39 "parser.mly"
       (string)
# 287 "parser.ml"
  )
    | BINANDNOTEQ of (
# 16 "parser.mly"
      (int)
# 292 "parser.ml"
  )
    | BINANDNOT of (
# 15 "parser.mly"
      (int)
# 297 "parser.ml"
  )
    | BINANDEQ of (
# 16 "parser.mly"
      (int)
# 302 "parser.ml"
  )
    | BINAND of (
# 15 "parser.mly"
      (int)
# 307 "parser.ml"
  )
    | ASSIGN of (
# 21 "parser.mly"
      (int)
# 312 "parser.ml"
  )
    | APPEND of (
# 32 "parser.mly"
       (int)
# 317 "parser.ml"
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
  | MenhirState144
  | MenhirState143
  | MenhirState140
  | MenhirState133
  | MenhirState131
  | MenhirState122
  | MenhirState121
  | MenhirState118
  | MenhirState116
  | MenhirState112
  | MenhirState107
  | MenhirState104
  | MenhirState97
  | MenhirState94
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
  | MenhirState48
  | MenhirState47
  | MenhirState43
  | MenhirState41
  | MenhirState40
  | MenhirState31
  | MenhirState30
  | MenhirState27
  | MenhirState26
  | MenhirState24
  | MenhirState21
  | MenhirState19
  | MenhirState16
  | MenhirState11
  | MenhirState9

# 1 "parser.mly"
   
  open Lexing


# 389 "parser.ml"

let rec _menhir_run107 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107

and _menhir_goto_exp_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 11 "parser.mly"
      (int)
# 443 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (
# 21 "parser.mly"
      (int)
# 448 "parser.ml"
            ))), _, (_3 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 103 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, _4)) _1 _3 )
# 453 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 11 "parser.mly"
      (int)
# 476 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))), (_3 : (
# 21 "parser.mly"
      (int)
# 481 "parser.ml"
            ))), _, (_4 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 102 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclTypeInit (_2, iden, exp, _5)) _1 _4 )
# 486 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run58 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 501 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 540 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 25 "parser.mly"
      (int)
# 579 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 618 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 657 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 696 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 25 "parser.mly"
      (int)
# 735 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 774 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 25 "parser.mly"
      (int)
# 813 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 25 "parser.mly"
      (int)
# 852 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 25 "parser.mly"
      (int)
# 891 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 25 "parser.mly"
      (int)
# 930 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 969 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run92 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 19 "parser.mly"
      (int)
# 1008 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 19 "parser.mly"
      (int)
# 1047 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 1086 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 1125 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 1164 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 15 "parser.mly"
      (int)
# 1203 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_goto_func_params : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Ast.typeT) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143)
    | RPAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : ((string * Ast.typeT) list))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 1263 "parser.ml"
         in
        _menhir_goto_option_func_params_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.type_decl) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, (_1 : (Ast.type_decl list))) = _menhir_stack in
        let _v : (Ast.type_decl list) = 
# 86 "parser.mly"
                          ( _2::_1 )
# 1284 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _v
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let _1 = () in
        let _v : (Ast.type_decl list) = 
# 81 "parser.mly"
                                        ( [_2] )
# 1295 "parser.ml"
         in
        _menhir_goto_type_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.variable_decl list))) = _menhir_stack in
        let _v : (Ast.variable_decl list) = 
# 98 "parser.mly"
                          ( _2 @ _1 )
# 1312 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let _1 = () in
        let _v : (Ast.variable_decl list) = 
# 93 "parser.mly"
                                      ( _2 )
# 1323 "parser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
      (int)
# 1339 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 177 "parser.mly"
                                            ( Ast.Urinary (Ast.UBinNOT, _2, _1) )
# 1344 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 19 "parser.mly"
      (int)
# 1353 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 176 "parser.mly"
                                            ( Ast.Urinary (Ast.BoolNOT, _2, _1) )
# 1358 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
      (int)
# 1367 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 175 "parser.mly"
                                            ( Ast.Urinary (Ast.UMinus, _2, _1) )
# 1372 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
      (int)
# 1381 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 174 "parser.mly"
                                            ( _2 )
# 1386 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 23 "parser.mly"
      (int)
# 1395 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 178 "parser.mly"
                                            ( failwith ("Line: " ^ (string_of_int _1) ^ " Go lite does not support the type <-") )
# 1400 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | RSQUARE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | IDENTIFIER _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LPAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LSQUARE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1499 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 169 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 1504 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1519 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 163 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 1524 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1533 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 164 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 1538 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | NEQ _ | PLUS _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1569 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 161 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 1574 "parser.ml"
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
        | BINAND _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1609 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 171 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 1614 "parser.ml"
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
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1637 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 170 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 1642 "parser.ml"
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
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1665 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 167 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 1670 "parser.ml"
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
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1693 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 166 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 1698 "parser.ml"
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
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1721 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 168 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 1726 "parser.ml"
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
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RSHIFT _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1749 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 165 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 1754 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 25 "parser.mly"
      (int)
# 1795 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 180 "parser.mly"
                                            ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 1800 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | NEQ _ | PLUS _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 1837 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 162 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 1842 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 25 "parser.mly"
      (int)
# 1883 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 181 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 1888 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 25 "parser.mly"
      (int)
# 1929 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 183 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 1934 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 25 "parser.mly"
      (int)
# 1975 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 182 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 1980 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 25 "parser.mly"
      (int)
# 2021 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 184 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 2026 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 25 "parser.mly"
      (int)
# 2067 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 179 "parser.mly"
                                            ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 2072 "parser.ml"
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
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _ | COMMA | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 19 "parser.mly"
      (int)
# 2127 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 173 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 2132 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | RSQUARE | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 19 "parser.mly"
      (int)
# 2185 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 172 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 2190 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp list) = 
# 151 "parser.mly"
                                  ( _3::_1 )
# 2249 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState112 | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp list) = 
# 150 "parser.mly"
                                  ( [_1] )
# 2307 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_field_decls : _menhir_env -> 'ttv_tail -> ((string * Ast.typeT) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | RCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState19 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), (_3 : ((string * Ast.typeT) list))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 131 "parser.mly"
                                                ( Ast.StructType _3 )
# 2340 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_goto_typeT : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState31 ->
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
# 123 "parser.mly"
                      ( _2 )
# 2367 "parser.ml"
             in
            _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 126 "parser.mly"
                          ( Ast.SliceType _3 )
# 2385 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_2 : (Ast.exp))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 125 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 2397 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState26 ->
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
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | IDENTIFIER _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LPAR ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LSQUARE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_3 : (Ast.typeT))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 128 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 2454 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 15 "parser.mly"
      (int)
# 2463 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 127 "parser.mly"
                      ( Ast.PointerType _2 )
# 2468 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 11 "parser.mly"
      (int)
# 2483 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), _, (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : ((string * Ast.typeT) list) = 
# 139 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 2493 "parser.ml"
             in
            _menhir_goto_field_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BININTLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | BINXOR _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | BOOLNOT _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | DECINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | FLOATLITERAL _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | HEXINTLITERAL _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 11 "parser.mly"
      (int)
# 2548 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 101 "parser.mly"
                                                ( List.map (fun iden -> Ast.VarDeclTypeNoInit (_2, iden, _3)) _1 )
# 2554 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 11 "parser.mly"
      (int)
# 2575 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
       (string * int)
# 2580 "parser.ml"
            ))), _, (_2 : (
# 21 "parser.mly"
      (int)
# 2584 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 89 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 2589 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 11 "parser.mly"
      (int)
# 2610 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
       (string * int)
# 2615 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 90 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1), (snd _1)) )
# 2620 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2636 "parser.ml"
         in
        _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 119 "parser.mly"
                                                ( [] )
# 2646 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : ((string * Ast.typeT) list))), _, (_3 : (string list))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.typeT) list) = 
# 120 "parser.mly"
                                                ( (List.map (fun iden -> (iden, _4)) _3) @ _1 )
# 2657 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run100 : _menhir_env -> 'ttv_tail * _menhir_state * (string list) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (
# 27 "parser.mly"
       (string * int)
# 2681 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 147 "parser.mly"
                                  ( (fst _3)::_1 )
# 2688 "parser.ml"
         in
        _menhir_goto_ident_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 44 "parser.mly"
       (string)
# 2701 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 44 "parser.mly"
       (string)
# 2709 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 160 "parser.mly"
                                            ( Ast.StrLit (_1) )
# 2714 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "parser.mly"
       (string)
# 2721 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 43 "parser.mly"
       (string)
# 2729 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 159 "parser.mly"
                                            ( Ast.RuneLit (_1) )
# 2734 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2741 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 2780 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "parser.mly"
       (string)
# 2819 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 2827 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 157 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Oct) )
# 2832 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 2839 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "parser.mly"
       (string)
# 2878 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 40 "parser.mly"
       (string)
# 2886 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 158 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Hex) )
# 2891 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (float)
# 2898 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (float)
# 2906 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 154 "parser.mly"
                                            ( Ast.FloatLit (_1) )
# 2911 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "parser.mly"
       (string)
# 2918 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 2926 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 155 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Dec) )
# 2931 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 2938 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 2977 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "parser.mly"
       (string)
# 3016 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 39 "parser.mly"
       (string)
# 3024 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 156 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Bin) )
# 3029 "parser.ml"
     in
    _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.variable_decl list)) = _v in
    let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
    let _v : (Ast.top_level_decl list) = 
# 77 "parser.mly"
                              ( (List.map (fun var -> Ast.TopVarDecl var) _2) @ _1 )
# 3042 "parser.ml"
     in
    _menhir_goto_top_level_decls _menhir_env _menhir_stack _v

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.type_decl list)) = _v in
    let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
    let _v : (Ast.top_level_decl list) = 
# 76 "parser.mly"
                               ( (List.map (fun var -> Ast.TopTypeDecl var) _2) @ _1 )
# 3055 "parser.ml"
     in
    _menhir_goto_top_level_decls _menhir_env _menhir_stack _v

and _menhir_goto_option_typeT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _1 = () in
                let _v : (unit) = 
# 188 "parser.mly"
                    ( () )
# 3086 "parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_7 : (unit)) = _v in
                let (((_menhir_stack, (_2 : (
# 27 "parser.mly"
       (string * int)
# 3094 "parser.ml"
                ))), _, (_4 : ((string * Ast.typeT) list option))), _, (_6 : (Ast.typeT option))) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Ast.func_decl) = 
# 106 "parser.mly"
                                                                     ( 
      let params = match _4 with
      | None -> []
      | Some p -> p
      in
      let retType = match _6 with
      | None -> Ast.VoidType
      | Some t -> t
      in
      Ast.FuncDecl (params, retType, (snd _2))
    )
# 3112 "parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_2 : (Ast.func_decl)) = _v in
                let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
                let _v : (Ast.top_level_decl list) = 
# 78 "parser.mly"
                              ( (Ast.TopFuncDecl _2) :: _1 )
# 3121 "parser.ml"
                 in
                _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
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
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
# 138 "parser.mly"
                    ( [] )
# 3154 "parser.ml"
         in
        _menhir_goto_field_decls _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 134 "parser.mly"
                      ( Ast.StrType )
# 3172 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 135 "parser.mly"
                      ( Ast.RuneType )
# 3184 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 3191 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENTIFIER _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LSQUARE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
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
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BININTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BINXOR _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BOOLNOT _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | DECINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATLITERAL _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | HEXINTLITERAL _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState27 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | IDENTIFIER _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LPAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | LSQUARE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 132 "parser.mly"
                      ( Ast.IntType )
# 3386 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 129 "parser.mly"
                      ( failwith "Interface types are not suppoted in GoLite" )
# 3398 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
       (string * int)
# 3405 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 27 "parser.mly"
       (string * int)
# 3413 "parser.ml"
    )) = _v in
    let _v : (Ast.typeT) = 
# 124 "parser.mly"
                      ( failwith "TODO keep track of underlying types" )
# 3418 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 133 "parser.mly"
                      ( Ast.FloatType )
# 3430 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 130 "parser.mly"
                      ( failwith "Channel types are not suppoted in GoLite" )
# 3442 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ident_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState16 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BININTLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | BINXOR _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | BOOLNOT _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | DECINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | FLOATLITERAL _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | HEXINTLITERAL _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | COMMA ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | COMMA ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | COMMA ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140)
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | COMMA ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState144
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_specs : _menhir_env -> 'ttv_tail -> (Ast.variable_decl list) -> 'ttv_return =
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
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 11 "parser.mly"
      (int)
# 3651 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _), (_3 : (Ast.variable_decl list))), _) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.variable_decl list) = 
# 94 "parser.mly"
                                      ( _3 )
# 3660 "parser.ml"
             in
            _menhir_goto_var_decls _menhir_env _menhir_stack _v
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

and _menhir_goto_type_specs : _menhir_env -> 'ttv_tail -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | RPAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState118 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 11 "parser.mly"
      (int)
# 3697 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _), (_3 : (Ast.type_decl list))), _) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.type_decl list) = 
# 82 "parser.mly"
                                        ( _3 )
# 3706 "parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118

and _menhir_run121 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
       (string * int)
# 3723 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState121 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122)
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | IDENTIFIER _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | LPAR ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | LSQUARE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState133 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
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

and _menhir_goto_option_func_params_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Ast.typeT) list option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | LPAR ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | LSQUARE ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState133 in
            let _v : (Ast.typeT option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 4029 "parser.ml"
             in
            _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
       (string * int)
# 4046 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 27 "parser.mly"
       (string * int)
# 4054 "parser.ml"
    )) = _v in
    let _v : (string list) = 
# 146 "parser.mly"
                                  ( [(fst _1)] )
# 4059 "parser.ml"
     in
    _menhir_goto_ident_list _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_top_level_decls : _menhir_env -> 'ttv_tail -> (Ast.top_level_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, (_1 : (Ast.package_clause))), (_2 : (unit))), (_3 : (Ast.top_level_decl list))) = _menhir_stack in
        let _4 = () in
        let _v : (
# 61 "parser.mly"
       (Ast.program)
# 4078 "parser.ml"
        ) = 
# 65 "parser.mly"
                                                              ( Ast.Program (_1, _3) )
# 4082 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 61 "parser.mly"
       (Ast.program)
# 4089 "parser.ml"
        )) = _v in
        Obj.magic _1
    | FUNC ->
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
            | LPAR ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENTIFIER _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
                | RPAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState131 in
                    let _v : ((string * Ast.typeT) list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 4116 "parser.ml"
                     in
                    _menhir_goto_option_func_params_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)
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
    | TYPE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | LPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState116 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (Ast.type_decl list) = 
# 85 "parser.mly"
                          ( [] )
# 4149 "parser.ml"
             in
            _menhir_goto_type_specs _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
    | VAR ->
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
            let _v : (Ast.variable_decl list) = 
# 97 "parser.mly"
                          ( [] )
# 4172 "parser.ml"
             in
            _menhir_goto_var_specs _menhir_env _menhir_stack _v
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
    let _v : (Ast.top_level_decl list) = 
# 75 "parser.mly"
                        ( [] )
# 4193 "parser.ml"
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
# 61 "parser.mly"
       (Ast.program)
# 4212 "parser.ml"
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
            | SEMICOLON _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_3 : (
# 11 "parser.mly"
      (int)
# 4244 "parser.ml"
                )) = _v in
                let (_menhir_stack, (_2 : (
# 27 "parser.mly"
       (string * int)
# 4249 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 68 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 4255 "parser.ml"
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
# 72 "parser.mly"
                        ( failwith "Packages are not supported in GoLite.")
# 4270 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | FUNC | TYPE | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 71 "parser.mly"
                        ( () )
# 4278 "parser.ml"
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
  


# 4306 "parser.ml"
