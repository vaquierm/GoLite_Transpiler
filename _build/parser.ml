
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR
    | TYPE
    | THREEDOT
    | SWITCH
    | STRUCT
    | STRINGLITERAL of (
# 43 "parser.mly"
       (string)
# 16 "parser.ml"
  )
    | SHORTASSIGN of (
# 20 "parser.mly"
      (int)
# 21 "parser.ml"
  )
    | SEMICOLON
    | SELECT
    | RUNELITERAL of (
# 42 "parser.mly"
       (string)
# 28 "parser.ml"
  )
    | RSQUARE
    | RSHIFTEQ of (
# 15 "parser.mly"
      (int)
# 34 "parser.ml"
  )
    | RSHIFT of (
# 14 "parser.mly"
      (int)
# 39 "parser.ml"
  )
    | RPAR
    | RETURN
    | RECEIVE of (
# 22 "parser.mly"
      (int)
# 46 "parser.ml"
  )
    | RCURLY
    | RAWSTRINGLITERAL of (
# 44 "parser.mly"
       (string)
# 52 "parser.ml"
  )
    | RANGE
    | PRINTLN of (
# 31 "parser.mly"
       (int)
# 58 "parser.ml"
  )
    | PRINT of (
# 31 "parser.mly"
       (int)
# 63 "parser.ml"
  )
    | PLUSPLUS of (
# 16 "parser.mly"
      (int)
# 68 "parser.ml"
  )
    | PLUSEQ of (
# 15 "parser.mly"
      (int)
# 73 "parser.ml"
  )
    | PLUS of (
# 14 "parser.mly"
      (int)
# 78 "parser.ml"
  )
    | PACKAGE
    | OCTINTLITERAL of (
# 37 "parser.mly"
       (string)
# 84 "parser.ml"
  )
    | MULTEQ of (
# 15 "parser.mly"
      (int)
# 89 "parser.ml"
  )
    | MULT of (
# 14 "parser.mly"
      (int)
# 94 "parser.ml"
  )
    | MODEQ of (
# 15 "parser.mly"
      (int)
# 99 "parser.ml"
  )
    | MOD of (
# 14 "parser.mly"
      (int)
# 104 "parser.ml"
  )
    | MINUSMINUS of (
# 16 "parser.mly"
      (int)
# 109 "parser.ml"
  )
    | MINUSEQ of (
# 15 "parser.mly"
      (int)
# 114 "parser.ml"
  )
    | MINUS of (
# 14 "parser.mly"
      (int)
# 119 "parser.ml"
  )
    | MAP
    | LT of (
# 24 "parser.mly"
      (int)
# 125 "parser.ml"
  )
    | LSQUARE
    | LSHIFTEQ of (
# 15 "parser.mly"
      (int)
# 131 "parser.ml"
  )
    | LSHIFT of (
# 14 "parser.mly"
      (int)
# 136 "parser.ml"
  )
    | LPAR
    | LEQ of (
# 24 "parser.mly"
      (int)
# 142 "parser.ml"
  )
    | LEN of (
# 31 "parser.mly"
       (int)
# 147 "parser.ml"
  )
    | LCURLY
    | INTERFACE
    | IMPORT
    | IF
    | IDENTIFIER of (
# 26 "parser.mly"
       (string * int)
# 156 "parser.ml"
  )
    | HEXINTLITERAL of (
# 39 "parser.mly"
       (string)
# 161 "parser.ml"
  )
    | GT of (
# 24 "parser.mly"
      (int)
# 166 "parser.ml"
  )
    | GOTO
    | GO
    | GEQ of (
# 24 "parser.mly"
      (int)
# 173 "parser.ml"
  )
    | FUNC
    | FOR
    | FLOATLITERAL of (
# 41 "parser.mly"
       (float)
# 180 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 24 "parser.mly"
      (int)
# 186 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 15 "parser.mly"
      (int)
# 194 "parser.ml"
  )
    | DIV of (
# 14 "parser.mly"
      (int)
# 199 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 36 "parser.mly"
       (string)
# 206 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 33 "parser.mly"
       (string)
# 213 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN
    | CASE
    | CAP of (
# 31 "parser.mly"
       (int)
# 222 "parser.ml"
  )
    | BREAK
    | BOOLOR of (
# 18 "parser.mly"
      (int)
# 228 "parser.ml"
  )
    | BOOLNOT of (
# 18 "parser.mly"
      (int)
# 233 "parser.ml"
  )
    | BOOLLITERAL of (
# 40 "parser.mly"
       (bool)
# 238 "parser.ml"
  )
    | BOOLAND of (
# 18 "parser.mly"
      (int)
# 243 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 34 "parser.mly"
       (string)
# 248 "parser.ml"
  )
    | BINXOREQ of (
# 15 "parser.mly"
      (int)
# 253 "parser.ml"
  )
    | BINXOR of (
# 14 "parser.mly"
      (int)
# 258 "parser.ml"
  )
    | BINOREQ of (
# 15 "parser.mly"
      (int)
# 263 "parser.ml"
  )
    | BINOR of (
# 14 "parser.mly"
      (int)
# 268 "parser.ml"
  )
    | BININTLITERAL of (
# 38 "parser.mly"
       (string)
# 273 "parser.ml"
  )
    | BINANDNOTEQ of (
# 15 "parser.mly"
      (int)
# 278 "parser.ml"
  )
    | BINANDNOT of (
# 14 "parser.mly"
      (int)
# 283 "parser.ml"
  )
    | BINANDEQ of (
# 15 "parser.mly"
      (int)
# 288 "parser.ml"
  )
    | BINAND of (
# 14 "parser.mly"
      (int)
# 293 "parser.ml"
  )
    | ASSIGN of (
# 20 "parser.mly"
      (int)
# 298 "parser.ml"
  )
    | APPEND of (
# 31 "parser.mly"
       (int)
# 303 "parser.ml"
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
  | MenhirState13
  | MenhirState11
  | MenhirState6
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "parser.mly"
   
  open Lexing


# 333 "parser.ml"

let rec _menhir_run11 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 338 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LPAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 357 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LPAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MINUS _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Ast.exp))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.exp) = 
# 64 "parser.mly"
                       ( _2 )
# 401 "parser.ml"
             in
            _menhir_goto_factor _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 46 "parser.mly"
       (Ast.exp)
# 423 "parser.ml"
            ) = 
# 50 "parser.mly"
                       ( _1 )
# 427 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 46 "parser.mly"
       (Ast.exp)
# 434 "parser.ml"
            )) = _v in
            Obj.magic _1
        | MINUS _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 453 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LPAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run6 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 14 "parser.mly"
      (int)
# 472 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LPAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) _v
        | EOF | MINUS _ | PLUS _ | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 55 "parser.mly"
                       ( _1 )
# 507 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) _v
        | EOF | MINUS _ | PLUS _ | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 530 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 53 "parser.mly"
                       ( Ast.Binop (_1,Ast.Add,_3) )
# 535 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) _v
        | EOF | MINUS _ | PLUS _ | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 558 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 54 "parser.mly"
                       ( Ast.Binop (_1,Ast.Sub,_3) )
# 563 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_factor : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Ast.exp)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 585 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 58 "parser.mly"
                       ( Ast.Binop(_1,Ast.Mul,_3) )
# 590 "parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Ast.exp)) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 600 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 59 "parser.mly"
                     ( Ast.Binop(_1,Ast.Div,_3) )
# 605 "parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState13 | MenhirState11 | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.exp)) = _v in
        let _v : (Ast.exp) = 
# 60 "parser.mly"
                       ( _1 )
# 615 "parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | LPAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
       (string * int)
# 664 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 26 "parser.mly"
       (string * int)
# 672 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 63 "parser.mly"
                       ( Ast.Var (fst _1) )
# 677 "parser.ml"
     in
    _menhir_goto_factor _menhir_env _menhir_stack _menhir_s _v

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
# 46 "parser.mly"
       (Ast.exp)
# 696 "parser.ml"
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
    | IDENTIFIER _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LPAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 219 "/usr/share/menhir/standard.mly"
  


# 723 "parser.ml"
