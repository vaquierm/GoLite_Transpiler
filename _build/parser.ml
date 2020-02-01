
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
    | MULTEQ of (
# 15 "parser.mly"
      (int)
# 91 "parser.ml"
  )
    | MULT of (
# 14 "parser.mly"
      (int)
# 96 "parser.ml"
  )
    | MODEQ of (
# 15 "parser.mly"
      (int)
# 101 "parser.ml"
  )
    | MOD of (
# 14 "parser.mly"
      (int)
# 106 "parser.ml"
  )
    | MINUSMINUS of (
# 16 "parser.mly"
      (int)
# 111 "parser.ml"
  )
    | MINUSEQ of (
# 15 "parser.mly"
      (int)
# 116 "parser.ml"
  )
    | MINUS of (
# 14 "parser.mly"
      (int)
# 121 "parser.ml"
  )
    | MAP
    | LT of (
# 24 "parser.mly"
      (int)
# 127 "parser.ml"
  )
    | LSQUARE
    | LSHIFTEQ of (
# 15 "parser.mly"
      (int)
# 133 "parser.ml"
  )
    | LSHIFT of (
# 14 "parser.mly"
      (int)
# 138 "parser.ml"
  )
    | LPAR
    | LEQ of (
# 24 "parser.mly"
      (int)
# 144 "parser.ml"
  )
    | LEN of (
# 31 "parser.mly"
       (int)
# 149 "parser.ml"
  )
    | LCURLY
    | INTTYPE
    | INTERFACE
    | IMPORT
    | IF
    | IDENTIFIER of (
# 26 "parser.mly"
       (string * int)
# 159 "parser.ml"
  )
    | HEXINTLITERAL of (
# 39 "parser.mly"
       (string)
# 164 "parser.ml"
  )
    | GT of (
# 24 "parser.mly"
      (int)
# 169 "parser.ml"
  )
    | GOTO
    | GO
    | GEQ of (
# 24 "parser.mly"
      (int)
# 176 "parser.ml"
  )
    | FUNC
    | FOR
    | FLOATTYPE
    | FLOATLITERAL of (
# 41 "parser.mly"
       (float)
# 184 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 24 "parser.mly"
      (int)
# 190 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 15 "parser.mly"
      (int)
# 198 "parser.ml"
  )
    | DIV of (
# 14 "parser.mly"
      (int)
# 203 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 36 "parser.mly"
       (string)
# 210 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 33 "parser.mly"
       (string)
# 217 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN
    | CASE
    | CAP of (
# 31 "parser.mly"
       (int)
# 226 "parser.ml"
  )
    | BREAK
    | BOOLTYPE
    | BOOLOR of (
# 18 "parser.mly"
      (int)
# 233 "parser.ml"
  )
    | BOOLNOT of (
# 18 "parser.mly"
      (int)
# 238 "parser.ml"
  )
    | BOOLLITERAL of (
# 40 "parser.mly"
       (bool)
# 243 "parser.ml"
  )
    | BOOLAND of (
# 18 "parser.mly"
      (int)
# 248 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 34 "parser.mly"
       (string)
# 253 "parser.ml"
  )
    | BINXOREQ of (
# 15 "parser.mly"
      (int)
# 258 "parser.ml"
  )
    | BINXOR of (
# 14 "parser.mly"
      (int)
# 263 "parser.ml"
  )
    | BINOREQ of (
# 15 "parser.mly"
      (int)
# 268 "parser.ml"
  )
    | BINOR of (
# 14 "parser.mly"
      (int)
# 273 "parser.ml"
  )
    | BININTLITERAL of (
# 38 "parser.mly"
       (string)
# 278 "parser.ml"
  )
    | BINANDNOTEQ of (
# 15 "parser.mly"
      (int)
# 283 "parser.ml"
  )
    | BINANDNOT of (
# 14 "parser.mly"
      (int)
# 288 "parser.ml"
  )
    | BINANDEQ of (
# 15 "parser.mly"
      (int)
# 293 "parser.ml"
  )
    | BINAND of (
# 14 "parser.mly"
      (int)
# 298 "parser.ml"
  )
    | ASSIGN of (
# 20 "parser.mly"
      (int)
# 303 "parser.ml"
  )
    | APPEND of (
# 31 "parser.mly"
       (int)
# 308 "parser.ml"
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
  | MenhirState48
  | MenhirState41
  | MenhirState38
  | MenhirState27
  | MenhirState26
  | MenhirState24
  | MenhirState22
  | MenhirState19
  | MenhirState14
  | MenhirState11
  | MenhirState9

# 1 "parser.mly"
   
  open Lexing


# 343 "parser.ml"

let rec _menhir_goto_ident_list : _menhir_env -> 'ttv_tail -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19
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
# 368 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (string list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (string list) = 
# 102 "parser.mly"
                                  ( (fst _3)::_1 )
# 375 "parser.ml"
             in
            _menhir_goto_ident_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | FLOATTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | IDENTIFIER _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | INTERFACE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INTTYPE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState19
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
# 71 "parser.mly"
                          ( _2::_1 )
# 427 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.top_level_declaration)) = _v in
        let _1 = () in
        let _v : (Ast.top_level_declaration list) = 
# 66 "parser.mly"
                                        ( [_2] )
# 438 "parser.ml"
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
# 86 "parser.mly"
                                                ( Ast.StructType _3 )
# 462 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | CHAN | COMMA | FLOATTYPE | IDENTIFIER _ | INTERFACE | INTTYPE | LPAR | LSQUARE | MAP | MULT _ | RUNETYPE | STRINGTYPE | STRUCT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (string list) = 
# 101 "parser.mly"
                                  ( [] )
# 470 "parser.ml"
         in
        _menhir_goto_ident_list _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_typeT : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState27 ->
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
# 78 "parser.mly"
                      ( _2 )
# 499 "parser.ml"
             in
            _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 81 "parser.mly"
                          ( Ast.SliceType _3 )
# 517 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), (_2 : (Ast.exp))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 80 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 529 "parser.ml"
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
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | FLOATTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | IDENTIFIER _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | INTERFACE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | INTTYPE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LPAR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LSQUARE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | MAP ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | MULT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | RUNETYPE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | STRINGTYPE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | STRUCT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (_3 : (Ast.typeT))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 83 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 586 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 14 "parser.mly"
      (int)
# 595 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 82 "parser.mly"
                      ( Ast.PointerType _2 )
# 600 "parser.ml"
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
# 94 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 621 "parser.ml"
             in
            _menhir_goto_field_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
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
# 642 "parser.ml"
            ))), _, (_2 : (
# 20 "parser.mly"
      (int)
# 646 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _4 = () in
            let _v : (Ast.top_level_declaration) = 
# 74 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 652 "parser.ml"
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
# 673 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _3 = () in
            let _v : (Ast.top_level_declaration) = 
# 75 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1)) )
# 679 "parser.ml"
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
# 63 "parser.mly"
                               ( _2 @ _1 )
# 700 "parser.ml"
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
# 93 "parser.mly"
                    ( [] )
# 717 "parser.ml"
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
# 89 "parser.mly"
                      ( Ast.StrType )
# 735 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 90 "parser.mly"
                      ( Ast.RuneType )
# 747 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 754 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | FLOATTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | IDENTIFIER _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | INTERFACE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | INTTYPE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22
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
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | FLOATTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | IDENTIFIER _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | INTERFACE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | INTTYPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
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
    | FLOATLITERAL _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 41 "parser.mly"
       (float)
# 849 "parser.ml"
        )) = _v in
        let _v : (Ast.exp) = 
# 105 "parser.mly"
                    ( Ast.Float (_1) )
# 854 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _v) in
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
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | FLOATTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | IDENTIFIER _v ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | INTERFACE ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | INTTYPE ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LPAR ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | LSQUARE ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | MAP ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | MULT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | RUNETYPE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | STRINGTYPE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | STRUCT ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | RSQUARE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FLOATTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | IDENTIFIER _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | INTERFACE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INTTYPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LSQUARE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MAP ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | MULT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | RUNETYPE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | STRINGTYPE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | STRUCT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
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
    | CHAN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FLOATTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | IDENTIFIER _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INTERFACE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INTTYPE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LSQUARE ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MAP ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MULT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RUNETYPE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STRINGTYPE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STRUCT ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 87 "parser.mly"
                      ( Ast.IntType )
# 983 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 84 "parser.mly"
                      ( failwith "Interface types are not suppoted in GoLite" )
# 995 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
       (string * int)
# 1002 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 26 "parser.mly"
       (string * int)
# 1010 "parser.ml"
    )) = _v in
    let _v : (Ast.typeT) = 
# 79 "parser.mly"
                      ( failwith "TODO keep track of underlying types" )
# 1015 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 88 "parser.mly"
                      ( Ast.FloatType )
# 1027 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 85 "parser.mly"
                      ( failwith "Channel types are not suppoted in GoLite" )
# 1039 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
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
# 67 "parser.mly"
                                        ( _3 )
# 1117 "parser.ml"
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
# 1134 "parser.ml"
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
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FLOATTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IDENTIFIER _v ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | INTERFACE ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | INTTYPE ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LPAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LSQUARE ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MAP ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MULT _v ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | RUNETYPE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | STRINGTYPE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | STRUCT ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | CHAN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | FLOATTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | IDENTIFIER _v ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | INTERFACE ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INTTYPE ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState14
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
# 48 "parser.mly"
       (Ast.package_clause)
# 1220 "parser.ml"
        ) = 
# 52 "parser.mly"
                                                              ( _1 )
# 1224 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 48 "parser.mly"
       (Ast.package_clause)
# 1231 "parser.ml"
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
# 70 "parser.mly"
                          ( [] )
# 1250 "parser.ml"
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
# 62 "parser.mly"
                        ( [] )
# 1271 "parser.ml"
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
# 48 "parser.mly"
       (Ast.package_clause)
# 1290 "parser.ml"
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
# 1322 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 55 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 1329 "parser.ml"
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
# 59 "parser.mly"
                        ( failwith "Packages are not supported in GoLite.")
# 1344 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | TYPE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 58 "parser.mly"
                        ( () )
# 1352 "parser.ml"
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
  


# 1380 "parser.ml"
