
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
# 42 "parser.mly"
       (string)
# 17 "parser.ml"
  )
    | SHORTASSIGN of (
# 19 "parser.mly"
      (int)
# 22 "parser.ml"
  )
    | SEMICOLON of (
# 9 "parser.mly"
      (int)
# 27 "parser.ml"
  )
    | SELECT
    | RUNETYPE
    | RUNELITERAL of (
# 41 "parser.mly"
       (string)
# 34 "parser.ml"
  )
    | RSQUARE of (
# 7 "parser.mly"
      (int)
# 39 "parser.ml"
  )
    | RSHIFTEQ of (
# 14 "parser.mly"
      (int)
# 44 "parser.ml"
  )
    | RSHIFT of (
# 13 "parser.mly"
      (int)
# 49 "parser.ml"
  )
    | RPAR of (
# 5 "parser.mly"
      (int)
# 54 "parser.ml"
  )
    | RETURN
    | RECEIVE of (
# 21 "parser.mly"
      (int)
# 60 "parser.ml"
  )
    | RCURLY
    | RAWSTRINGLITERAL of (
# 43 "parser.mly"
       (string)
# 66 "parser.ml"
  )
    | RANGE
    | PRINTLN of (
# 30 "parser.mly"
       (int)
# 72 "parser.ml"
  )
    | PRINT of (
# 30 "parser.mly"
       (int)
# 77 "parser.ml"
  )
    | PLUSPLUS of (
# 15 "parser.mly"
      (int)
# 82 "parser.ml"
  )
    | PLUSEQ of (
# 14 "parser.mly"
      (int)
# 87 "parser.ml"
  )
    | PLUS of (
# 13 "parser.mly"
      (int)
# 92 "parser.ml"
  )
    | PACKAGE
    | OCTINTLITERAL of (
# 36 "parser.mly"
       (string)
# 98 "parser.ml"
  )
    | NEQ of (
# 23 "parser.mly"
      (int)
# 103 "parser.ml"
  )
    | MULTEQ of (
# 14 "parser.mly"
      (int)
# 108 "parser.ml"
  )
    | MULT of (
# 13 "parser.mly"
      (int)
# 113 "parser.ml"
  )
    | MODEQ of (
# 14 "parser.mly"
      (int)
# 118 "parser.ml"
  )
    | MOD of (
# 13 "parser.mly"
      (int)
# 123 "parser.ml"
  )
    | MINUSMINUS of (
# 15 "parser.mly"
      (int)
# 128 "parser.ml"
  )
    | MINUSEQ of (
# 14 "parser.mly"
      (int)
# 133 "parser.ml"
  )
    | MINUS of (
# 13 "parser.mly"
      (int)
# 138 "parser.ml"
  )
    | MAP
    | LT of (
# 23 "parser.mly"
      (int)
# 144 "parser.ml"
  )
    | LSQUARE of (
# 7 "parser.mly"
      (int)
# 149 "parser.ml"
  )
    | LSHIFTEQ of (
# 14 "parser.mly"
      (int)
# 154 "parser.ml"
  )
    | LSHIFT of (
# 13 "parser.mly"
      (int)
# 159 "parser.ml"
  )
    | LPAR of (
# 5 "parser.mly"
      (int)
# 164 "parser.ml"
  )
    | LEQ of (
# 23 "parser.mly"
      (int)
# 169 "parser.ml"
  )
    | LEN of (
# 30 "parser.mly"
       (int)
# 174 "parser.ml"
  )
    | LCURLY
    | INTTYPE
    | INTERFACE
    | IMPORT
    | IF
    | IDENTIFIER of (
# 25 "parser.mly"
       (string * int)
# 184 "parser.ml"
  )
    | HEXINTLITERAL of (
# 38 "parser.mly"
       (string)
# 189 "parser.ml"
  )
    | GT of (
# 23 "parser.mly"
      (int)
# 194 "parser.ml"
  )
    | GOTO
    | GO
    | GEQ of (
# 23 "parser.mly"
      (int)
# 201 "parser.ml"
  )
    | FUNC
    | FOR
    | FLOATTYPE
    | FLOATLITERAL of (
# 40 "parser.mly"
       (float)
# 209 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 23 "parser.mly"
      (int)
# 215 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 14 "parser.mly"
      (int)
# 223 "parser.ml"
  )
    | DIV of (
# 13 "parser.mly"
      (int)
# 228 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 35 "parser.mly"
       (string)
# 235 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 32 "parser.mly"
       (string)
# 242 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN
    | CASE
    | CAP of (
# 30 "parser.mly"
       (int)
# 251 "parser.ml"
  )
    | BREAK
    | BOOLTYPE
    | BOOLOR of (
# 17 "parser.mly"
      (int)
# 258 "parser.ml"
  )
    | BOOLNOT of (
# 17 "parser.mly"
      (int)
# 263 "parser.ml"
  )
    | BOOLLITERAL of (
# 39 "parser.mly"
       (bool)
# 268 "parser.ml"
  )
    | BOOLAND of (
# 17 "parser.mly"
      (int)
# 273 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 33 "parser.mly"
       (string)
# 278 "parser.ml"
  )
    | BINXOREQ of (
# 14 "parser.mly"
      (int)
# 283 "parser.ml"
  )
    | BINXOR of (
# 13 "parser.mly"
      (int)
# 288 "parser.ml"
  )
    | BINOREQ of (
# 14 "parser.mly"
      (int)
# 293 "parser.ml"
  )
    | BINOR of (
# 13 "parser.mly"
      (int)
# 298 "parser.ml"
  )
    | BININTLITERAL of (
# 37 "parser.mly"
       (string)
# 303 "parser.ml"
  )
    | BINANDNOTEQ of (
# 14 "parser.mly"
      (int)
# 308 "parser.ml"
  )
    | BINANDNOT of (
# 13 "parser.mly"
      (int)
# 313 "parser.ml"
  )
    | BINANDEQ of (
# 14 "parser.mly"
      (int)
# 318 "parser.ml"
  )
    | BINAND of (
# 13 "parser.mly"
      (int)
# 323 "parser.ml"
  )
    | ASSIGN of (
# 19 "parser.mly"
      (int)
# 328 "parser.ml"
  )
    | APPEND of (
# 30 "parser.mly"
       (int)
# 333 "parser.ml"
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
  | MenhirState186
  | MenhirState185
  | MenhirState182
  | MenhirState171
  | MenhirState163
  | MenhirState158
  | MenhirState156
  | MenhirState148
  | MenhirState143
  | MenhirState142
  | MenhirState141
  | MenhirState140
  | MenhirState135
  | MenhirState130
  | MenhirState123
  | MenhirState120
  | MenhirState111
  | MenhirState99
  | MenhirState96
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
  | MenhirState57
  | MenhirState55
  | MenhirState53
  | MenhirState51
  | MenhirState50
  | MenhirState46
  | MenhirState44
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
  | MenhirState12
  | MenhirState10
  | MenhirState9

# 1 "parser.mly"
   

# 413 "parser.ml"

let rec _menhir_run111 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState111
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111

and _menhir_goto_exp_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | RPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.exp list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 492 "parser.ml"
             in
            _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 515 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 520 "parser.ml"
            ))), _, (_3 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 100 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, _4)) _1 _3 )
# 525 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 9 "parser.mly"
      (int)
# 548 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))), (_3 : (
# 19 "parser.mly"
      (int)
# 553 "parser.ml"
            ))), _, (_4 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 99 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclTypeInit (_2, iden, exp, _5)) _1 _4 )
# 558 "parser.ml"
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

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 573 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 638 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 703 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 768 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 833 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 898 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 963 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1028 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1093 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1158 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1223 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run92 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1288 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run64 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1353 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 17 "parser.mly"
      (int)
# 1418 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 17 "parser.mly"
      (int)
# 1483 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1548 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1613 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1678 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1743 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.type_decl list)) = _v in
    let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
    let _v : (Ast.top_level_decl list) = 
# 73 "parser.mly"
                               ( (List.map (fun var -> Ast.TopTypeDecl var) _2) @ _1 )
# 1814 "parser.ml"
     in
    _menhir_goto_top_level_decls _menhir_env _menhir_stack _v

and _menhir_goto_type_specs : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState148 _v
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState148 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 9 "parser.mly"
      (int)
# 1841 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _, (_2 : (
# 5 "parser.mly"
      (int)
# 1846 "parser.ml"
            ))), _, (_3 : (Ast.type_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 1850 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.type_decl list) = 
# 79 "parser.mly"
                                        ( _3 )
# 1856 "parser.ml"
             in
            _menhir_goto_type_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.variable_decl list)) = _v in
    let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
    let _v : (Ast.top_level_decl list) = 
# 74 "parser.mly"
                              ( (List.map (fun var -> Ast.TopVarDecl var) _2) @ _1 )
# 1879 "parser.ml"
     in
    _menhir_goto_top_level_decls _menhir_env _menhir_stack _v

and _menhir_goto_var_specs : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState12 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 9 "parser.mly"
      (int)
# 1906 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _, (_2 : (
# 5 "parser.mly"
      (int)
# 1911 "parser.ml"
            ))), _, (_3 : (Ast.variable_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 1915 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.variable_decl list) = 
# 91 "parser.mly"
                                      ( _3 )
# 1921 "parser.ml"
             in
            _menhir_goto_var_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 7 "parser.mly"
      (int)
# 1989 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 1994 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 190 "parser.mly"
                                            ( Ast.IndexExp (_1, _3, _2) )
# 1999 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2022 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 159 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 2027 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2042 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 153 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 2047 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2056 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 154 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 2061 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | NEQ _ | PLUS _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2092 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 151 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 2097 "parser.ml"
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
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2132 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 161 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 2137 "parser.ml"
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
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2160 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 160 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 2165 "parser.ml"
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
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2188 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 157 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 2193 "parser.ml"
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
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2216 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 156 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 2221 "parser.ml"
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
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2244 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 158 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 2249 "parser.ml"
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
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2272 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 155 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 2277 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2318 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 172 "parser.mly"
                                            ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 2323 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | MINUS _ | NEQ _ | PLUS _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2360 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 152 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 2365 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2406 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 173 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 2411 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2452 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 175 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 2457 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2498 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 174 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 2503 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2544 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 176 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 2549 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | EQ _ | GEQ _ | GT _ | LEQ _ | LT _ | NEQ _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2590 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 171 "parser.mly"
                                            ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 2595 "parser.ml"
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
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _ | COMMA | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 17 "parser.mly"
      (int)
# 2650 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 163 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 2655 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _ | BOOLOR _ | COMMA | RPAR _ | RSQUARE _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 17 "parser.mly"
      (int)
# 2708 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 162 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 2713 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 5 "parser.mly"
      (int)
# 2770 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.typeT))), (_2 : (
# 5 "parser.mly"
      (int)
# 2775 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 188 "parser.mly"
                                            ( Ast.CastExp (_1, _3, _2) )
# 2780 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2797 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 169 "parser.mly"
                                            ( Ast.Unary (Ast.Ref, _2, _1) )
# 2802 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2811 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 167 "parser.mly"
                                            ( Ast.Unary (Ast.UBinNOT, _2, _1) )
# 2816 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "parser.mly"
      (int)
# 2825 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 166 "parser.mly"
                                            ( Ast.Unary (Ast.BoolNOT, _2, _1) )
# 2830 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp list) = 
# 148 "parser.mly"
                                  ( _3::_1 )
# 2883 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState135 | MenhirState130 | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp list) = 
# 147 "parser.mly"
                                  ( [_1] )
# 2941 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2956 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 165 "parser.mly"
                                            ( Ast.Unary (Ast.UMinus, _2, _1) )
# 2961 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2970 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 168 "parser.mly"
                                            ( Ast.Unary (Ast.DeRef, _2, _1) )
# 2975 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2984 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 164 "parser.mly"
                                            ( _2 )
# 2989 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 21 "parser.mly"
      (int)
# 2998 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 170 "parser.mly"
                                            ( failwith ("Line: " ^ (string_of_int _1) ^ " Go lite does not support the type <-") )
# 3003 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | IDENTIFIER _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState163 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 3138 "parser.ml"
             in
            _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 3197 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : ('a list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : ('a list) = 
# 208 "parser.mly"
                                      ( failwith "go statements are not supported in GoLite" )
# 3204 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_4 : (
# 9 "parser.mly"
      (int)
# 3230 "parser.ml"
        )) = _v in
        let ((_menhir_stack, (_1 : ('a list))), _, (_3 : (Ast.exp option))) = _menhir_stack in
        let _2 = () in
        let _v : ('a list) = 
# 209 "parser.mly"
                                       ( [] )
# 3237 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185)
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : ((string * Ast.typeT) list))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 3271 "parser.ml"
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
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.type_decl list))) = _menhir_stack in
        let _v : (Ast.type_decl list) = 
# 83 "parser.mly"
                          ( _2::_1 )
# 3292 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.type_decl)) = _v in
        let _v : (Ast.type_decl list) = 
# 82 "parser.mly"
                          ( [_1] )
# 3302 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let _1 = () in
        let _v : (Ast.type_decl list) = 
# 78 "parser.mly"
                                        ( [_2] )
# 3313 "parser.ml"
         in
        _menhir_goto_type_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.variable_decl list))) = _menhir_stack in
        let _v : (Ast.variable_decl list) = 
# 95 "parser.mly"
                          ( _2 @ _1 )
# 3330 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.variable_decl list)) = _v in
        let _v : (Ast.variable_decl list) = 
# 94 "parser.mly"
                          ( _1 )
# 3340 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let _1 = () in
        let _v : (Ast.variable_decl list) = 
# 90 "parser.mly"
                                      ( _2 )
# 3351 "parser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.typeT) -> (
# 5 "parser.mly"
      (int)
# 3360 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_goto_option_exp_list_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp list option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_4 : (
# 5 "parser.mly"
      (int)
# 3436 "parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 3441 "parser.ml"
        ))), (_2 : (
# 5 "parser.mly"
      (int)
# 3445 "parser.ml"
        ))), _, (_3 : (Ast.exp list option))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 192 "parser.mly"
                                            (
      let args = match _3 with
      | None -> []
      | Some a -> a
      in
      if List.length args == 1 then
        Ast.UnsureTypeFuncCall ((fst _1), (List.hd args), (snd _1))
      else
        Ast.FuncCall ((fst _1), args, (snd _1))
    )
# 3459 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_primary_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.primary_exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 25 "parser.mly"
       (string * int)
# 3488 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 189 "parser.mly"
                                            ( Ast.SelectExp (_1, (fst _3), (snd _3)) )
# 3495 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | LPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | IDENTIFIER _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | LSQUARE _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BININTLITERAL _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BINXOR _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BOOLNOT _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | DECINTLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | FLOATLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | HEXINTLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
    | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | DIV _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LT _ | MINUS _ | MOD _ | MULT _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 177 "parser.mly"
                                            ( Ast.PrimExp _1 )
# 3604 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_statement_list : _menhir_env -> 'ttv_tail -> ('a list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BREAK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 3633 "parser.ml"
            )) = _v in
            let (_menhir_stack, (_1 : ('a list))) = _menhir_stack in
            let _2 = () in
            let _v : ('a list) = 
# 210 "parser.mly"
                                      ( [] )
# 3640 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | CONTINUE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 3660 "parser.ml"
            )) = _v in
            let (_menhir_stack, (_1 : ('a list))) = _menhir_stack in
            let _2 = () in
            let _v : ('a list) = 
# 211 "parser.mly"
                                         ( [] )
# 3667 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | FALLTHROUGH ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 3687 "parser.ml"
            )) = _v in
            let (_menhir_stack, (_1 : ('a list))) = _menhir_stack in
            let _2 = () in
            let _v : ('a list) = 
# 213 "parser.mly"
                                        ( failwith "fallthrough statements are not supported in GoLite" )
# 3694 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | GO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | BININTLITERAL _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | BINXOR _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | BOOLNOT _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | DECINTLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | FLOATLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | HEXINTLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState171
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171)
    | GOTO ->
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
                let (_4 : (
# 9 "parser.mly"
      (int)
# 3779 "parser.ml"
                )) = _v in
                let ((_menhir_stack, (_1 : ('a list))), (_3 : (
# 25 "parser.mly"
       (string * int)
# 3784 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : ('a list) = 
# 212 "parser.mly"
                                                ( failwith "goto statements are not supported in GoLite" )
# 3790 "parser.ml"
                 in
                _menhir_goto_statement_list _menhir_env _menhir_stack _v
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
    | RCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (_2 : ('a list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 204 "parser.mly"
                                    ( () )
# 3813 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_8 : (
# 9 "parser.mly"
      (int)
# 3827 "parser.ml"
            )) = _v in
            let ((((((_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 3832 "parser.ml"
            ))), (_3 : (
# 5 "parser.mly"
      (int)
# 3836 "parser.ml"
            ))), _, (_4 : ((string * Ast.typeT) list option))), (_5 : (
# 5 "parser.mly"
      (int)
# 3840 "parser.ml"
            ))), _, (_6 : (Ast.typeT option))), (_7 : (unit))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.func_decl) = 
# 103 "parser.mly"
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
# 3856 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_2 : (Ast.func_decl)) = _v in
            let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
            let _v : (Ast.top_level_decl list) = 
# 75 "parser.mly"
                              ( (Ast.TopFuncDecl _2) :: _1 )
# 3865 "parser.ml"
             in
            _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | RETURN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BININTLITERAL _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BINXOR _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BOOLNOT _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | DECINTLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | FLOATLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | HEXINTLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState163
        | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState163 in
            let _v : (Ast.exp option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 3935 "parser.ml"
             in
            _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_goto_field_decls : _menhir_env -> 'ttv_tail -> ((string * Ast.typeT) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
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
# 128 "parser.mly"
                                                ( Ast.StructType _3 )
# 3969 "parser.ml"
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
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 5 "parser.mly"
      (int)
# 3993 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 5 "parser.mly"
      (int)
# 3998 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.typeT) = 
# 120 "parser.mly"
                      ( _2 )
# 4003 "parser.ml"
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
        let (((_menhir_stack, _menhir_s, (_1 : (
# 7 "parser.mly"
      (int)
# 4018 "parser.ml"
        ))), _, (_2 : (
# 7 "parser.mly"
      (int)
# 4022 "parser.ml"
        ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 123 "parser.mly"
                          ( Ast.SliceType _3 )
# 4027 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState171 | MenhirState163 | MenhirState135 | MenhirState130 | MenhirState27 | MenhirState40 | MenhirState41 | MenhirState44 | MenhirState111 | MenhirState46 | MenhirState50 | MenhirState51 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState88 | MenhirState86 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState66 | MenhirState64 | MenhirState62 | MenhirState60 | MenhirState57 | MenhirState55 | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAR _v ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 5 "parser.mly"
      (int)
# 4055 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_3 : (
# 5 "parser.mly"
      (int)
# 4060 "parser.ml"
            ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 191 "parser.mly"
                                            ( failwith "Type assertions are not supported in GoLite" )
# 4066 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAR _v ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 7 "parser.mly"
      (int)
# 4094 "parser.ml"
        ))), _, (_2 : (Ast.exp))), (_3 : (
# 7 "parser.mly"
      (int)
# 4098 "parser.ml"
        ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 122 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 4103 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | IDENTIFIER _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState123
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), (_2 : (
# 7 "parser.mly"
      (int)
# 4157 "parser.ml"
        ))), _, (_3 : (Ast.typeT))), (_4 : (
# 7 "parser.mly"
      (int)
# 4161 "parser.ml"
        ))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 125 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 4167 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4176 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 124 "parser.mly"
                      ( Ast.PointerType _2 )
# 4181 "parser.ml"
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
# 9 "parser.mly"
      (int)
# 4196 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), _, (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : ((string * Ast.typeT) list) = 
# 136 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 4206 "parser.ml"
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
            | BINAND _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | BININTLITERAL _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | BINXOR _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | BOOLNOT _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | DECINTLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | FLOATLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | HEXINTLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState135
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 4287 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 98 "parser.mly"
                                                ( List.map (fun iden -> Ast.VarDeclTypeNoInit (_2, iden, _3)) _1 )
# 4293 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4314 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 4319 "parser.ml"
            ))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 4323 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 86 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 4328 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 4349 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 4354 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 87 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1), (snd _1)) )
# 4359 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState158 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 4375 "parser.ml"
         in
        _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 116 "parser.mly"
                                                ( [] )
# 4385 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : ((string * Ast.typeT) list))), _, (_3 : (string list))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.typeT) list) = 
# 117 "parser.mly"
                                                ( (List.map (fun iden -> (iden, _4)) _3) @ _1 )
# 4396 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run126 : _menhir_env -> 'ttv_tail * _menhir_state * (string list) -> _menhir_state -> 'ttv_return =
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
# 25 "parser.mly"
       (string * int)
# 4420 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 144 "parser.mly"
                                  ( (fst _3)::_1 )
# 4427 "parser.ml"
         in
        _menhir_goto_ident_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (string)
# 4440 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (string)
# 4448 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 187 "parser.mly"
                                            ( Ast.StrLit (_1) )
# 4453 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "parser.mly"
       (string)
# 4460 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 41 "parser.mly"
       (string)
# 4468 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 186 "parser.mly"
                                            ( Ast.RuneLit (_1) )
# 4473 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (int)
# 4480 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 4545 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "parser.mly"
       (string)
# 4610 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 36 "parser.mly"
       (string)
# 4618 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 184 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Oct) )
# 4623 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 4630 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 4695 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 4760 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | BININTLITERAL _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | BINXOR _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | BOOLNOT _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | DECINTLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | FLOATLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | HEXINTLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | RPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState46 in
            let _v : (Ast.exp list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 4829 "parser.ml"
             in
            _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | BINAND _ | BINANDNOT _ | BINOR _ | BINXOR _ | BOOLAND _ | BOOLOR _ | COMMA | DIV _ | DOT | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSQUARE _ | LT _ | MINUS _ | MOD _ | MULT _ | NEQ _ | PLUS _ | RPAR _ | RSHIFT _ | RSQUARE _ | SEMICOLON _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 4841 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 180 "parser.mly"
                                            ( Ast.Var ((fst _1), (snd _1)) )
# 4846 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "parser.mly"
       (string)
# 4859 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 4867 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 185 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Hex) )
# 4872 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "parser.mly"
       (float)
# 4879 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 40 "parser.mly"
       (float)
# 4887 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 181 "parser.mly"
                                            ( Ast.FloatLit (_1) )
# 4892 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 35 "parser.mly"
       (string)
# 4899 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 35 "parser.mly"
       (string)
# 4907 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 182 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Dec) )
# 4912 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 4919 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 4984 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "parser.mly"
       (string)
# 5049 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 5057 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 183 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Bin) )
# 5062 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 5069 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState53
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53

and _menhir_goto_option_typeT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : ('a list) = 
# 207 "parser.mly"
                                      ( [] )
# 5145 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
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
# 135 "parser.mly"
                    ( [] )
# 5168 "parser.ml"
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
# 131 "parser.mly"
                      ( Ast.StrType )
# 5186 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 132 "parser.mly"
                      ( Ast.RuneType )
# 5198 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 5205 "parser.ml"
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
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
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
    | RSQUARE _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
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
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
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

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
      (int)
# 5291 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BININTLITERAL _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BINXOR _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BOOLNOT _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | DECINTLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | HEXINTLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RSQUARE _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState27 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
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
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
      (int)
# 5391 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
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
# 129 "parser.mly"
                      ( Ast.IntType )
# 5435 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 126 "parser.mly"
                      ( failwith "Interface types are not suppoted in GoLite" )
# 5447 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 5454 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 25 "parser.mly"
       (string * int)
# 5462 "parser.ml"
    )) = _v in
    let _v : (Ast.typeT) = 
# 121 "parser.mly"
                      ( print_string "DEFINED TYPE"; Ast.DefinedType ((fst _1), None) )
# 5467 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 130 "parser.mly"
                      ( Ast.FloatType )
# 5479 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 127 "parser.mly"
                      ( failwith "Channel types are not suppoted in GoLite" )
# 5491 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_ident_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 | MenhirState10 | MenhirState12 ->
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
            | BINAND _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | BININTLITERAL _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | BINXOR _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | BOOLNOT _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | DECINTLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | FLOATLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | HEXINTLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130)
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | COMMA ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
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
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
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
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | COMMA ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182)
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | COMMA ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState186
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186)
    | _ ->
        _menhir_fail ()

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 5706 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState142 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143)
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | IDENTIFIER _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState142
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState163 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState158 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState148 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState143 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState111 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
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
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
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
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState158
        | LCURLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState158 in
            let _v : (Ast.typeT option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 6051 "parser.ml"
             in
            _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 6068 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 25 "parser.mly"
       (string * int)
# 6076 "parser.ml"
    )) = _v in
    let _v : (string list) = 
# 143 "parser.mly"
                                  ( [(fst _1)] )
# 6081 "parser.ml"
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
# 58 "parser.mly"
       (Ast.program)
# 6100 "parser.ml"
        ) = 
# 62 "parser.mly"
                                                              ( Ast.Program (_1, _3) )
# 6104 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 58 "parser.mly"
       (Ast.program)
# 6111 "parser.ml"
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
            | LPAR _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENTIFIER _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
                | RPAR _ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState156 in
                    let _v : ((string * Ast.typeT) list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 6139 "parser.ml"
                     in
                    _menhir_goto_option_func_params_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156)
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
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | LPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState140 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140)
    | VAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
        | LPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState9 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10)
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
# 72 "parser.mly"
                        ( [] )
# 6218 "parser.ml"
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
# 58 "parser.mly"
       (Ast.program)
# 6237 "parser.ml"
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
# 9 "parser.mly"
      (int)
# 6269 "parser.ml"
                )) = _v in
                let (_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 6274 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 65 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 6280 "parser.ml"
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
# 69 "parser.mly"
                        ( failwith "Packages are not supported in GoLite.")
# 6295 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | FUNC | TYPE | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 68 "parser.mly"
                        ( () )
# 6303 "parser.ml"
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
  


# 6331 "parser.ml"
