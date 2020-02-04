
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
  | MenhirState229
  | MenhirState228
  | MenhirState225
  | MenhirState220
  | MenhirState217
  | MenhirState214
  | MenhirState211
  | MenhirState208
  | MenhirState205
  | MenhirState202
  | MenhirState199
  | MenhirState194
  | MenhirState191
  | MenhirState188
  | MenhirState183
  | MenhirState179
  | MenhirState168
  | MenhirState160
  | MenhirState159
  | MenhirState155
  | MenhirState153
  | MenhirState145
  | MenhirState140
  | MenhirState139
  | MenhirState138
  | MenhirState137
  | MenhirState132
  | MenhirState127
  | MenhirState120
  | MenhirState117
  | MenhirState105
  | MenhirState98
  | MenhirState95
  | MenhirState93
  | MenhirState91
  | MenhirState89
  | MenhirState87
  | MenhirState85
  | MenhirState83
  | MenhirState81
  | MenhirState79
  | MenhirState77
  | MenhirState75
  | MenhirState73
  | MenhirState71
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState59
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState49
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
   

# 426 "parser.ml"

let rec _menhir_run105 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105

and _menhir_goto_simple_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.statement)) = _v in
    let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
    let _v : (Ast.statement list) = 
# 219 "parser.mly"
                                        ( _2::_1 )
# 497 "parser.ml"
     in
    _menhir_goto_statement_list _menhir_env _menhir_stack _v

and _menhir_goto_exp_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | RPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.exp list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 518 "parser.ml"
             in
            _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 541 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 546 "parser.ml"
            ))), _, (_3 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 100 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, _4)) _1 _3 )
# 551 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState132 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 9 "parser.mly"
      (int)
# 574 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))), (_3 : (
# 19 "parser.mly"
      (int)
# 579 "parser.ml"
            ))), _, (_4 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 99 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclTypeInit (_2, iden, exp, _5)) _1 _4 )
# 584 "parser.ml"
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

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 599 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 664 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65

and _menhir_run79 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 729 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 794 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 859 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run81 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 924 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_run83 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 989 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1054 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run85 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1119 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1184 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run89 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1249 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run91 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 23 "parser.mly"
      (int)
# 1314 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1379 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63

and _menhir_run93 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 17 "parser.mly"
      (int)
# 1444 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_run95 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 17 "parser.mly"
      (int)
# 1509 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1574 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1639 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1704 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> (
# 13 "parser.mly"
      (int)
# 1769 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.type_decl list)) = _v in
    let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
    let _v : (Ast.top_level_decl list) = 
# 73 "parser.mly"
                               ( (List.map (fun var -> Ast.TopTypeDecl var) _2) @ _1 )
# 1840 "parser.ml"
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
        _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState145 in
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
# 1867 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _, (_2 : (
# 5 "parser.mly"
      (int)
# 1872 "parser.ml"
            ))), _, (_3 : (Ast.type_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 1876 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.type_decl list) = 
# 79 "parser.mly"
                                        ( _3 )
# 1882 "parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.variable_decl list)) = _v in
    let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
    let _v : (Ast.top_level_decl list) = 
# 74 "parser.mly"
                              ( (List.map (fun var -> Ast.TopVarDecl var) _2) @ _1 )
# 1905 "parser.ml"
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
# 1932 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _, (_2 : (
# 5 "parser.mly"
      (int)
# 1937 "parser.ml"
            ))), _, (_3 : (Ast.variable_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 1941 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.variable_decl list) = 
# 91 "parser.mly"
                                      ( _3 )
# 1947 "parser.ml"
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
# 1975 "parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.typeT))), (_2 : (
# 5 "parser.mly"
      (int)
# 1980 "parser.ml"
        ))), _, (_3 : (Ast.exp list option))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 191 "parser.mly"
                                            (
      let args = match _3 with
      | None -> []
      | Some a -> a
      in
      if List.length args == 1 then
        begin match _1 with
        | Ast.DefinedType (x, _) -> Ast.UnsureTypeFuncCall (x, (List.hd args), _2)
        | _ -> Ast.CastExp (_1, (List.hd args), _2)
        end
      else
        begin match _1 with
        | Ast.DefinedType (x, _) -> Ast.FuncCall (x, args, _2)
        | _ -> failwith "A cast expression must have exactly one argument"
        end
    )
# 2000 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 7 "parser.mly"
      (int)
# 2064 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 2069 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 189 "parser.mly"
                                            ( Ast.IndexExp (_1, _3, _2) )
# 2074 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2097 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 159 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 2102 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2117 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 153 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 2122 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2131 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 154 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 2136 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2167 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 151 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 2172 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2207 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 161 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 2212 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2235 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 160 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 2240 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2263 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 157 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 2268 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2291 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 156 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 2296 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2319 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 158 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 2324 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2347 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 155 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 2352 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2393 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 172 "parser.mly"
                                            ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 2398 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 13 "parser.mly"
      (int)
# 2435 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 152 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 2440 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2481 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 173 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 2486 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2527 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 175 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 2532 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2573 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 174 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 2578 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2619 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 176 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 2624 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 23 "parser.mly"
      (int)
# 2665 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 171 "parser.mly"
                                            ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 2670 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLOR _ | COMMA | DIVEQ _ | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 17 "parser.mly"
      (int)
# 2725 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 163 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 2730 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 17 "parser.mly"
      (int)
# 2783 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 162 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 2788 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp list) = 
# 148 "parser.mly"
                                  ( _3::_1 )
# 2847 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState132 | MenhirState127 | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp list) = 
# 147 "parser.mly"
                                  ( [_1] )
# 2905 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2920 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 169 "parser.mly"
                                            ( Ast.Unary (Ast.Ref, _2, _1) )
# 2925 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2934 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 167 "parser.mly"
                                            ( Ast.Unary (Ast.UBinNOT, _2, _1) )
# 2939 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "parser.mly"
      (int)
# 2948 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 166 "parser.mly"
                                            ( Ast.Unary (Ast.BoolNOT, _2, _1) )
# 2953 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2962 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 165 "parser.mly"
                                            ( Ast.Unary (Ast.UMinus, _2, _1) )
# 2967 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2976 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 168 "parser.mly"
                                            ( Ast.Unary (Ast.DeRef, _2, _1) )
# 2981 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 2990 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 164 "parser.mly"
                                            ( _2 )
# 2995 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 21 "parser.mly"
      (int)
# 3004 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 170 "parser.mly"
                                            ( failwith ("Line: " ^ (string_of_int _1) ^ " Go lite does not support the type <-") )
# 3009 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | IDENTIFIER _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 3144 "parser.ml"
             in
            _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 3203 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 213 "parser.mly"
                                        ( failwith "go statements are not supported in GoLite" )
# 3210 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState159 ->
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220)
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState217
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217)
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOTEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState214
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214)
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOREQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState211
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211)
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOREQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState208
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208)
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | DIVEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205)
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFTEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState202
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202)
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUSEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState199
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199)
        | MINUSMINUS _v ->
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
# 3745 "parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 3750 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.statement) = 
# 224 "parser.mly"
                                          ( Ast.ExpStm (Ast.Binop (_1, Ast.BMinus, _1, _3), _3) )
# 3755 "parser.ml"
                 in
                _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MODEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState194
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194)
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | MULTEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState191
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191)
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUSEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState188
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188)
        | PLUSPLUS _v ->
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
# 3965 "parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 15 "parser.mly"
      (int)
# 3970 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.statement) = 
# 223 "parser.mly"
                                          ( Ast.ExpStm (Ast.Binop (_1, Ast.BPlus, _1, _3), _3) )
# 3975 "parser.ml"
                 in
                _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFTEQ _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState183
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_2 : (
# 9 "parser.mly"
      (int)
# 4053 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 222 "parser.mly"
                                          ( Ast.ExpStm (_1, _2) )
# 4059 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | SHORTASSIGN _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BINAND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState179
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4178 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 19 "parser.mly"
      (int)
# 4183 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 237 "parser.mly"
                                          (
      let id = match _1 with
      | Ast.PrimExp e ->
        begin match e with
        | Ast.Var (x, _) -> x
        | _ -> failwith "The left hand side of a short hand assignment must be an id";
        end
      | _ -> failwith "The left hand side of a short hand assignment must be an id";
      in
      Ast.VarDeclStm (Ast.VarDeclNoTypeInit (id, _3, _4))
    )
# 4198 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4257 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4262 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 234 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Rshift, _3, _4), _4) )
# 4267 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4326 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4331 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 226 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BPlus, _3, _4), _4) )
# 4336 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState191 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4395 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4400 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 228 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mult, _3, _4), _4) )
# 4405 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState194 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4464 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4469 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 236 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mod, _3, _4), _4) )
# 4474 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState199 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4533 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4538 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 227 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BMinus, _3, _4), _4) )
# 4543 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4602 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4607 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 235 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Lshift, _3, _4), _4) )
# 4612 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4671 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4676 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 229 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Div, _3, _4), _4) )
# 4681 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4740 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4745 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 232 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinXOR, _3, _4), _4) )
# 4750 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4809 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4814 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 231 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinOR, _3, _4), _4) )
# 4819 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState214 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4878 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4883 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 233 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinANDNOT, _3, _4), _4) )
# 4888 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState217 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4947 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 14 "parser.mly"
      (int)
# 4952 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 230 "parser.mly"
                                          ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinAND, _3, _4), _4) )
# 4957 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5016 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), (_2 : (
# 19 "parser.mly"
      (int)
# 5021 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 225 "parser.mly"
                                          ( Ast.AssignStm (_1, _3, _4) )
# 5026 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
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
# 5052 "parser.ml"
        )) = _v in
        let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp option))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.statement list) = 
# 214 "parser.mly"
                                         ( (Ast.Return (_3, _4))::_1 )
# 5059 "parser.ml"
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
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState228)
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : ((string * Ast.typeT) list))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 5093 "parser.ml"
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
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.type_decl list))) = _menhir_stack in
        let _v : (Ast.type_decl list) = 
# 83 "parser.mly"
                          ( _2::_1 )
# 5114 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.type_decl)) = _v in
        let _v : (Ast.type_decl list) = 
# 82 "parser.mly"
                          ( [_1] )
# 5124 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let _1 = () in
        let _v : (Ast.type_decl list) = 
# 78 "parser.mly"
                                        ( [_2] )
# 5135 "parser.ml"
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
# 5152 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.variable_decl list)) = _v in
        let _v : (Ast.variable_decl list) = 
# 94 "parser.mly"
                          ( _1 )
# 5162 "parser.ml"
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
# 5173 "parser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.typeT) -> (
# 5 "parser.mly"
      (int)
# 5182 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState54 in
        let _v : (Ast.exp list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 5245 "parser.ml"
         in
        _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

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
# 5272 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 188 "parser.mly"
                                            ( Ast.SelectExp (_1, (fst _3), (snd _3)) )
# 5279 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | LPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | IDENTIFIER _v ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
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
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | BINXOR _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | BOOLNOT _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56)
    | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIV _ | DIVEQ _ | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 177 "parser.mly"
                                            ( Ast.PrimExp _1 )
# 5388 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_statement_list : _menhir_env -> 'ttv_tail -> (Ast.statement list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | BREAK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
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
# 5427 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 215 "parser.mly"
                                        ( (Ast.Break)::_1 )
# 5434 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | CONTINUE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
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
# 5459 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 216 "parser.mly"
                                           ( (Ast.Continue)::_1 )
# 5466 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | FALLTHROUGH ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
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
# 5491 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 218 "parser.mly"
                                          ( failwith "fallthrough statements are not supported in GoLite" )
# 5498 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | BINXOR _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | BOOLNOT _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState168
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168)
    | GOTO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
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
# 5592 "parser.ml"
                )) = _v in
                let (((_menhir_stack, (_1 : (Ast.statement list))), _), (_3 : (
# 25 "parser.mly"
       (string * int)
# 5597 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Ast.statement list) = 
# 217 "parser.mly"
                                                  ( failwith "goto statements are not supported in GoLite" )
# 5603 "parser.ml"
                 in
                _menhir_goto_statement_list _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | RCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, (_2 : (Ast.statement list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 209 "parser.mly"
                                    ( () )
# 5651 "parser.ml"
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
# 5665 "parser.ml"
            )) = _v in
            let ((((((_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 5670 "parser.ml"
            ))), (_3 : (
# 5 "parser.mly"
      (int)
# 5674 "parser.ml"
            ))), _, (_4 : ((string * Ast.typeT) list option))), (_5 : (
# 5 "parser.mly"
      (int)
# 5678 "parser.ml"
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
# 5694 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_2 : (Ast.func_decl)) = _v in
            let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
            let _v : (Ast.top_level_decl list) = 
# 75 "parser.mly"
                              ( (Ast.TopFuncDecl _2) :: _1 )
# 5703 "parser.ml"
             in
            _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | RETURN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | BINXOR _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | BOOLNOT _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState160
        | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState160 in
            let _v : (Ast.exp option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 5777 "parser.ml"
             in
            _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160)
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159

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
# 5820 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_reduce91 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
       (string * int)
# 5831 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 5837 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Ast.typeT) = 
# 121 "parser.mly"
                      ( Ast.DefinedType ((fst _1), None) )
# 5842 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

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
# 5862 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 5 "parser.mly"
      (int)
# 5867 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.typeT) = 
# 120 "parser.mly"
                      ( _2 )
# 5872 "parser.ml"
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
# 5887 "parser.ml"
        ))), _, (_2 : (
# 7 "parser.mly"
      (int)
# 5891 "parser.ml"
        ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 123 "parser.mly"
                          ( Ast.SliceType _3 )
# 5896 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState220 | MenhirState217 | MenhirState214 | MenhirState211 | MenhirState208 | MenhirState205 | MenhirState202 | MenhirState199 | MenhirState194 | MenhirState191 | MenhirState188 | MenhirState183 | MenhirState179 | MenhirState159 | MenhirState168 | MenhirState160 | MenhirState132 | MenhirState127 | MenhirState27 | MenhirState40 | MenhirState41 | MenhirState44 | MenhirState49 | MenhirState50 | MenhirState105 | MenhirState95 | MenhirState93 | MenhirState91 | MenhirState89 | MenhirState87 | MenhirState85 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState73 | MenhirState71 | MenhirState69 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState61 | MenhirState59 | MenhirState56 | MenhirState54 | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAR _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 ->
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
# 5924 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_3 : (
# 5 "parser.mly"
      (int)
# 5929 "parser.ml"
            ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 190 "parser.mly"
                                            ( failwith "Type assertions are not supported in GoLite" )
# 5935 "parser.ml"
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
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 7 "parser.mly"
      (int)
# 5963 "parser.ml"
        ))), _, (_2 : (Ast.exp))), (_3 : (
# 7 "parser.mly"
      (int)
# 5967 "parser.ml"
        ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 122 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 5972 "parser.ml"
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
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), (_2 : (
# 7 "parser.mly"
      (int)
# 6026 "parser.ml"
        ))), _, (_3 : (Ast.typeT))), (_4 : (
# 7 "parser.mly"
      (int)
# 6030 "parser.ml"
        ))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 125 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 6036 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 6045 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 124 "parser.mly"
                      ( Ast.PointerType _2 )
# 6050 "parser.ml"
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
# 6065 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), _, (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : ((string * Ast.typeT) list) = 
# 136 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 6075 "parser.ml"
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState132
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 6156 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 98 "parser.mly"
                                                ( List.map (fun iden -> Ast.VarDeclTypeNoInit (_2, iden, _3)) _1 )
# 6162 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState140 ->
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
# 6183 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 6188 "parser.ml"
            ))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 6192 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 86 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 6197 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState139 ->
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
# 6218 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 6223 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 87 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1), (snd _1)) )
# 6228 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState155 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 6244 "parser.ml"
         in
        _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 116 "parser.mly"
                                                ( [] )
# 6254 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | MenhirState229 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : ((string * Ast.typeT) list))), _, (_3 : (string list))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.typeT) list) = 
# 117 "parser.mly"
                                                ( (List.map (fun iden -> (iden, _4)) _3) @ _1 )
# 6265 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run123 : _menhir_env -> 'ttv_tail * _menhir_state * (string list) -> _menhir_state -> 'ttv_return =
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
# 6289 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 144 "parser.mly"
                                  ( (fst _3)::_1 )
# 6296 "parser.ml"
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
# 6309 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (string)
# 6317 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 187 "parser.mly"
                                            ( Ast.StrLit (_1) )
# 6322 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "parser.mly"
       (string)
# 6329 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 41 "parser.mly"
       (string)
# 6337 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 186 "parser.mly"
                                            ( Ast.RuneLit (_1) )
# 6342 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (int)
# 6349 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
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
# 6414 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
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
# 6479 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 36 "parser.mly"
       (string)
# 6487 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 184 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Oct) )
# 6492 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 6499 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
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
# 6564 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
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
# 6629 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR _ ->
        _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)
    | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIV _ | DIVEQ _ | DOT | EQ _ | GEQ _ | GT _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 6643 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 180 "parser.mly"
                                            ( Ast.Var ((fst _1), (snd _1)) )
# 6648 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "parser.mly"
       (string)
# 6661 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 6669 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 185 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Hex) )
# 6674 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "parser.mly"
       (float)
# 6681 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 40 "parser.mly"
       (float)
# 6689 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 181 "parser.mly"
                                            ( Ast.FloatLit (_1) )
# 6694 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 35 "parser.mly"
       (string)
# 6701 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 35 "parser.mly"
       (string)
# 6709 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 182 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Dec) )
# 6714 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 6721 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 6786 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
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
# 37 "parser.mly"
       (string)
# 6851 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 6859 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 183 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Bin) )
# 6864 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 6871 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

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
        let _v : (Ast.statement list) = 
# 212 "parser.mly"
                                        ( [] )
# 6947 "parser.ml"
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
# 6970 "parser.ml"
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
# 6988 "parser.ml"
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
# 7000 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 7007 "parser.ml"
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
# 7093 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
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
# 7193 "parser.ml"
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
# 7237 "parser.ml"
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
# 7249 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 7256 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 130 "parser.mly"
                      ( Ast.FloatType )
# 7271 "parser.ml"
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
# 7283 "parser.ml"
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | BINXOR _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | BOOLNOT _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | CHAN ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | FLOATTYPE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | INTERFACE ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | INTTYPE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | LPAR _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | MINUS _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | MULT _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | OCTINTLITERAL _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | PLUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | RECEIVE _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState127
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | COMMA ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState16
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
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState21
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
    | MenhirState153 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | COMMA ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState225
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225)
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | COMMA ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState229
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229)
    | _ ->
        _menhir_fail ()

and _menhir_run139 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 7498 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState139 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
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
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | IDENTIFIER _v ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState139
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState229 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState217 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState214 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState199 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState194 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState191 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState155 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState153 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState145 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState140 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState132 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | LCURLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState155 in
            let _v : (Ast.typeT option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 7896 "parser.ml"
             in
            _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 7913 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 25 "parser.mly"
       (string * int)
# 7921 "parser.ml"
    )) = _v in
    let _v : (string list) = 
# 143 "parser.mly"
                                  ( [(fst _1)] )
# 7926 "parser.ml"
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
# 7945 "parser.ml"
        ) = 
# 62 "parser.mly"
                                                              ( Ast.Program (_1, _3) )
# 7949 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 58 "parser.mly"
       (Ast.program)
# 7956 "parser.ml"
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
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
                | RPAR _ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState153 in
                    let _v : ((string * Ast.typeT) list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 7984 "parser.ml"
                     in
                    _menhir_goto_option_func_params_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153)
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
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | LPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState137 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IDENTIFIER _v ->
                _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137)
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
# 8063 "parser.ml"
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
# 8082 "parser.ml"
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
# 8114 "parser.ml"
                )) = _v in
                let (_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 8119 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 65 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 8125 "parser.ml"
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
# 8140 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | FUNC | TYPE | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 68 "parser.mly"
                        ( () )
# 8148 "parser.ml"
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
  


# 8176 "parser.ml"
