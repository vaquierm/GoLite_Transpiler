
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | STAR
    | SLASH
    | RPAR
    | PLUS
    | MINUS
    | LPAR
    | IDENTIFIER of (
# 6 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | EOF
  
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
   
# 45 "parser.ml"

let rec _menhir_run11 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
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

and _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
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
        | MINUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Ast.exp))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.exp) = 
# 26 "parser.mly"
                       ( _2 )
# 103 "parser.ml"
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
# 8 "parser.mly"
       (Ast.exp)
# 125 "parser.ml"
            ) = 
# 12 "parser.mly"
                       ( _1 )
# 129 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 8 "parser.mly"
       (Ast.exp)
# 136 "parser.ml"
            )) = _v in
            Obj.magic _1
        | MINUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
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

and _menhir_run6 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
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
        | SLASH ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack)
        | EOF | MINUS | PLUS | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 17 "parser.mly"
                       ( _1 )
# 199 "parser.ml"
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
        | SLASH ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack)
        | EOF | MINUS | PLUS | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp) = 
# 15 "parser.mly"
                       ( Ast.Binop (_1,Ast.Add,_3) )
# 224 "parser.ml"
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
        | SLASH ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack)
        | STAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack)
        | EOF | MINUS | PLUS | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp) = 
# 16 "parser.mly"
                       ( Ast.Binop (_1,Ast.Sub,_3) )
# 249 "parser.ml"
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
        let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.exp) = 
# 20 "parser.mly"
                       ( Ast.Binop(_1,Ast.Mul,_3) )
# 273 "parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (Ast.exp)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.exp) = 
# 21 "parser.mly"
                       ( Ast.Binop(_1,Ast.Div,_3) )
# 285 "parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 | MenhirState13 | MenhirState11 | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.exp)) = _v in
        let _v : (Ast.exp) = 
# 22 "parser.mly"
                       ( _1 )
# 295 "parser.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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
# 6 "parser.mly"
       (string)
# 344 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 6 "parser.mly"
       (string)
# 352 "parser.ml"
    )) = _v in
    let _v : (Ast.exp) = 
# 25 "parser.mly"
                       ( Ast.Var _1 )
# 357 "parser.ml"
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
# 8 "parser.mly"
       (Ast.exp)
# 376 "parser.ml"
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
  


# 403 "parser.ml"
