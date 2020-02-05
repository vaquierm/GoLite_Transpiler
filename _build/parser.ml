
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
# 43 "parser.mly"
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
# 45 "parser.mly"
       (string)
# 66 "parser.ml"
  )
    | RANGE
    | PRINTLN of (
# 32 "parser.mly"
       (int)
# 72 "parser.ml"
  )
    | PRINT of (
# 32 "parser.mly"
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
# 38 "parser.mly"
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
# 32 "parser.mly"
       (int)
# 174 "parser.ml"
  )
    | LCURLY
    | INTTYPE
    | INTERFACE of (
# 28 "parser.mly"
      (int)
# 181 "parser.ml"
  )
    | IMPORT of (
# 28 "parser.mly"
      (int)
# 186 "parser.ml"
  )
    | IF of (
# 27 "parser.mly"
      (int)
# 191 "parser.ml"
  )
    | IDENTIFIER of (
# 25 "parser.mly"
       (string * int)
# 196 "parser.ml"
  )
    | HEXINTLITERAL of (
# 40 "parser.mly"
       (string)
# 201 "parser.ml"
  )
    | GT of (
# 23 "parser.mly"
      (int)
# 206 "parser.ml"
  )
    | GOTO
    | GO
    | GEQ of (
# 23 "parser.mly"
      (int)
# 213 "parser.ml"
  )
    | FUNC
    | FOR of (
# 27 "parser.mly"
      (int)
# 219 "parser.ml"
  )
    | FLOATTYPE
    | FLOATLITERAL of (
# 42 "parser.mly"
       (float)
# 225 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 23 "parser.mly"
      (int)
# 231 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 14 "parser.mly"
      (int)
# 239 "parser.ml"
  )
    | DIV of (
# 13 "parser.mly"
      (int)
# 244 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 37 "parser.mly"
       (string)
# 251 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 34 "parser.mly"
       (string)
# 258 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN of (
# 28 "parser.mly"
      (int)
# 265 "parser.ml"
  )
    | CASE
    | CAP of (
# 32 "parser.mly"
       (int)
# 271 "parser.ml"
  )
    | BREAK
    | BOOLTYPE
    | BOOLOR of (
# 17 "parser.mly"
      (int)
# 278 "parser.ml"
  )
    | BOOLNOT of (
# 17 "parser.mly"
      (int)
# 283 "parser.ml"
  )
    | BOOLLITERAL of (
# 41 "parser.mly"
       (bool)
# 288 "parser.ml"
  )
    | BOOLAND of (
# 17 "parser.mly"
      (int)
# 293 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 35 "parser.mly"
       (string)
# 298 "parser.ml"
  )
    | BINXOREQ of (
# 14 "parser.mly"
      (int)
# 303 "parser.ml"
  )
    | BINXOR of (
# 13 "parser.mly"
      (int)
# 308 "parser.ml"
  )
    | BINOREQ of (
# 14 "parser.mly"
      (int)
# 313 "parser.ml"
  )
    | BINOR of (
# 13 "parser.mly"
      (int)
# 318 "parser.ml"
  )
    | BININTLITERAL of (
# 39 "parser.mly"
       (string)
# 323 "parser.ml"
  )
    | BINANDNOTEQ of (
# 14 "parser.mly"
      (int)
# 328 "parser.ml"
  )
    | BINANDNOT of (
# 13 "parser.mly"
      (int)
# 333 "parser.ml"
  )
    | BINANDEQ of (
# 14 "parser.mly"
      (int)
# 338 "parser.ml"
  )
    | BINAND of (
# 13 "parser.mly"
      (int)
# 343 "parser.ml"
  )
    | ASSIGN of (
# 19 "parser.mly"
      (int)
# 348 "parser.ml"
  )
    | APPEND of (
# 32 "parser.mly"
       (int)
# 353 "parser.ml"
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
  | MenhirState299
  | MenhirState298
  | MenhirState295
  | MenhirState281
  | MenhirState279
  | MenhirState277
  | MenhirState275
  | MenhirState274
  | MenhirState272
  | MenhirState271
  | MenhirState269
  | MenhirState267
  | MenhirState266
  | MenhirState264
  | MenhirState263
  | MenhirState261
  | MenhirState260
  | MenhirState254
  | MenhirState251
  | MenhirState250
  | MenhirState248
  | MenhirState247
  | MenhirState245
  | MenhirState244
  | MenhirState242
  | MenhirState241
  | MenhirState239
  | MenhirState238
  | MenhirState236
  | MenhirState235
  | MenhirState233
  | MenhirState232
  | MenhirState230
  | MenhirState229
  | MenhirState225
  | MenhirState224
  | MenhirState222
  | MenhirState221
  | MenhirState219
  | MenhirState218
  | MenhirState214
  | MenhirState213
  | MenhirState210
  | MenhirState209
  | MenhirState208
  | MenhirState205
  | MenhirState203
  | MenhirState202
  | MenhirState201
  | MenhirState198
  | MenhirState197
  | MenhirState193
  | MenhirState192
  | MenhirState187
  | MenhirState184
  | MenhirState183
  | MenhirState181
  | MenhirState179
  | MenhirState177
  | MenhirState169
  | MenhirState164
  | MenhirState163
  | MenhirState162
  | MenhirState161
  | MenhirState156
  | MenhirState151
  | MenhirState144
  | MenhirState141
  | MenhirState140
  | MenhirState133
  | MenhirState127
  | MenhirState126
  | MenhirState124
  | MenhirState123
  | MenhirState122
  | MenhirState112
  | MenhirState109
  | MenhirState108
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState103
  | MenhirState102
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState87
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState79
  | MenhirState78
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState74
  | MenhirState72
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState67
  | MenhirState64
  | MenhirState62
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState55
  | MenhirState52
  | MenhirState46
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState40
  | MenhirState39
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
  | MenhirState8

# 1 "parser.mly"
   

# 516 "parser.ml"

let rec _menhir_run122 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState122
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122

and _menhir_goto_for_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.statement)) = _v in
    let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
    let _v : (Ast.statement list) = 
# 264 "parser.mly"
                                                  (
    let for_stm = match _2 with
    | Ast.ForStm (None, cond, None, block, line) ->
      Ast.WhileStm (cond, block, line)
    | _ -> _2
    in
    for_stm::_1
  )
# 600 "parser.ml"
     in
    _menhir_goto_statement_list _menhir_env _menhir_stack _v

and _menhir_goto_if_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_6 : (Ast.statement)) = _v in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 614 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 304 "parser.mly"
                                                  (
    let inner_else = Ast.StmsBlock ([_6])
    in
    let inner = Ast.IfStm (_3, _4, Some inner_else, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 626 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState254 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_5 : (Ast.statement)) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 636 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 316 "parser.mly"
                                  (
    let b = Ast.StmsBlock ([_5])
    in
    Ast.IfStm (_2, _3, Some b, _1) 
  )
# 646 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.statement)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 263 "parser.mly"
                                                  ( _2::_1 )
# 657 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
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
            | RSQUARE _ ->
                _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
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
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_6 : (
# 7 "parser.mly"
      (int)
# 757 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 762 "parser.ml"
            ))), _, (_3 : (Ast.exp option))), _, (_5 : (Ast.exp option))) = _menhir_stack in
            let _4 = () in
            let _v : (Ast.primary_exp) = 
# 227 "parser.mly"
                                                (
    let beg = match _3 with
    | None -> Ast.PrimExp (Ast. IntLit ("0", Ast.Dec))
    | Some e -> e
    in
    let en = match _5 with
    | None -> Ast.PrimExp (Ast.LenExp (_1, _2))
    | Some e -> e
    in
    Ast.SliceExp (_1, beg, en, None, _2)
  )
# 778 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState184 ->
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
# 799 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp option))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 257 "parser.mly"
                                                  ( (Ast.Return (_3, _4))::_1 )
# 806 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState264 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | PRINT _v ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | PRINTLN _v ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | SEMICOLON _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState266 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LCURLY ->
                    _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState267
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState267)
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState266 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState266
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState272 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | PRINT _v ->
                _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | PRINTLN _v ->
                _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | SEMICOLON _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState274 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LCURLY ->
                    _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState275
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275)
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState274
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279)
    | _ ->
        _menhir_fail ()

and _menhir_run209 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 1020 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState209
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState209

and _menhir_run212 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 9 "parser.mly"
      (int)
# 1091 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (
# 9 "parser.mly"
      (int)
# 1099 "parser.ml"
    )) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
    let _v : (Ast.statement) = 
# 274 "parser.mly"
                                                  ( Ast.ExpStm (_1, _2) )
# 1105 "parser.ml"
     in
    _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run213 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1112 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState213

and _menhir_run216 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 1183 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (
# 9 "parser.mly"
      (int)
# 1197 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 1202 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 275 "parser.mly"
                                                  ( Ast.ExpStm (Ast.Binop (_1, Ast.BPlus, _1, _3), _3) )
# 1207 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run218 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1220 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState218
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218

and _menhir_run221 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1291 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState221 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState221
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState221

and _menhir_run224 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1362 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState224
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState224

and _menhir_run227 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 1433 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_3 : (
# 9 "parser.mly"
      (int)
# 1447 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 1452 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 276 "parser.mly"
                                                  ( Ast.ExpStm (Ast.Binop (_1, Ast.BMinus, _1, _3), _3) )
# 1457 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run229 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1470 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229

and _menhir_run232 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1541 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState232
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState232

and _menhir_run235 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1612 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState235
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235

and _menhir_run238 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1683 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState238
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState238

and _menhir_run241 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1754 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState241
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState241

and _menhir_run244 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1825 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState244
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState244

and _menhir_run247 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1896 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState247
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247

and _menhir_run250 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 1967 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState250
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250

and _menhir_goto_simple_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BINAND _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BINXOR _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BOOLNOT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState202
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState202
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | LPAR _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState202
        | MINUS _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | MULT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | PLUS _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | RECEIVE _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
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
    | MenhirState266 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState269
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState269)
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | BINAND _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | BINXOR _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | BOOLNOT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | LPAR _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | MINUS _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | MULT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | PLUS _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | RECEIVE _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | SEMICOLON _ ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState272
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272)
    | MenhirState274 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState277
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState277)
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.statement))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 262 "parser.mly"
                                                  ( _2::_1 )
# 2200 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | RPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.exp list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2223 "parser.ml"
             in
            _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 2246 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 2251 "parser.ml"
            ))), _, (_3 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 120 "parser.mly"
                                                    ( List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, _4)) _1 _3 )
# 2256 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 9 "parser.mly"
      (int)
# 2279 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))), (_3 : (
# 19 "parser.mly"
      (int)
# 2284 "parser.ml"
            ))), _, (_4 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 119 "parser.mly"
                                                    ( List.map2 (fun iden exp -> Ast.VarDeclTypeInit (_2, iden, exp, _5)) _1 _4 )
# 2289 "parser.ml"
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

and _menhir_reduce57 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (Ast.exp))) = _menhir_stack in
    let _v : (Ast.exp option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2307 "parser.ml"
     in
    _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2314 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
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

and _menhir_run74 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2385 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
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

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2456 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
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

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2527 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
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

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2598 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
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

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2669 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
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

and _menhir_run92 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2740 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
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

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2811 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
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

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2882 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
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

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2953 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
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

and _menhir_run98 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 3024 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_run100 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 3095 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState100
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3166 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
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

and _menhir_run105 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 3237 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
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

and _menhir_run107 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 3308 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3379 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
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

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3450 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
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

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3521 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
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

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3592 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
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

and _menhir_goto_option_SEMICOLON_ : _menhir_env -> 'ttv_tail -> (int option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_4 : (int option)) = _v in
    let (((_menhir_stack, _menhir_s), (_2 : (Ast.statement list))), _) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (Ast.block) = 
# 249 "parser.mly"
                                                  ( Ast.StmsBlock _2 )
# 3671 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState203 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IF _v ->
                _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
            | LCURLY ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState205
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205)
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN _ | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE _ | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | PRINTLN _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3698 "parser.ml"
            ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 323 "parser.mly"
                                 (
    let inner = Ast.IfStm (_3, _4, None, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3707 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3722 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 311 "parser.mly"
                                           (
    let inner = Ast.IfStm (_3, _4, Some _6, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3732 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | IF _v ->
                _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState254 _v
            | LCURLY ->
                _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState254
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState254)
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN _ | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE _ | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | PRINTLN _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3758 "parser.ml"
            ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 322 "parser.mly"
                ( Ast.IfStm (_2, _3, None, _1) )
# 3763 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState254 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3778 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))), _, (_5 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 321 "parser.mly"
                          ( Ast.IfStm (_2, _3, Some _5, _1) )
# 3784 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState267 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3793 "parser.ml"
        ))), _, (_2 : (
# 9 "parser.mly"
      (int)
# 3797 "parser.ml"
        ))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3801 "parser.ml"
        ))), _, (_5 : (
# 9 "parser.mly"
      (int)
# 3805 "parser.ml"
        ))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 342 "parser.mly"
                                                (
    Ast.ForStm (None, _3, None, _6, _1)
  )
# 3812 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState269 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3821 "parser.ml"
        ))), _, (_2 : (
# 9 "parser.mly"
      (int)
# 3825 "parser.ml"
        ))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3829 "parser.ml"
        ))), _, (_5 : (Ast.statement))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 336 "parser.mly"
                                                       (
    Ast.ForStm (None, _3, Some _5, _6, _1)
  )
# 3836 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState275 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3845 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3849 "parser.ml"
        ))), _, (_5 : (
# 9 "parser.mly"
      (int)
# 3853 "parser.ml"
        ))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 339 "parser.mly"
                                                       (
    Ast.ForStm (Some _2, _3, None, _6, _1)
  )
# 3860 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState277 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3869 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3873 "parser.ml"
        ))), _, (_5 : (Ast.statement))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 333 "parser.mly"
                                                              (
    Ast.ForStm (Some _2, _3, Some _5, _6, _1)
  )
# 3880 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3889 "parser.ml"
        ))), _, (_2 : (Ast.exp option))), _, (_3 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 330 "parser.mly"
                  (
    Ast.WhileStm (_2, _3, _1)
  )
# 3896 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 253 "parser.mly"
                                                  ( (Ast.BlockStm _2)::_1  )
# 3906 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((((_menhir_stack, _menhir_s), (_2 : (
# 25 "parser.mly"
       (string * int)
# 3915 "parser.ml"
        ))), (_3 : (
# 5 "parser.mly"
      (int)
# 3919 "parser.ml"
        ))), _, (_4 : ((string * Ast.typeT) list option))), (_5 : (
# 5 "parser.mly"
      (int)
# 3923 "parser.ml"
        ))), _, (_6 : (Ast.typeT option))), _, (_7 : (Ast.block))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.func_decl) = 
# 123 "parser.mly"
                                                                    ( 
      let params = match _4 with
      | None -> []
      | Some p -> p
      in
      let retType = match _6 with
      | None -> Ast.VoidType
      | Some t -> t
      in
      Ast.FuncDecl ((fst _2), params, retType, _7, (snd _2))
    )
# 3939 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.func_decl)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 95 "parser.mly"
                                                    ( (Ast.TopFuncDecl _2) :: _1 )
# 3948 "parser.ml"
         in
        _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run201 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
      (int)
# 3957 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | PRINT _v ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | PRINTLN _v ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201

and _menhir_reduce56 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.exp option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 4034 "parser.ml"
     in
    _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run191 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 32 "parser.mly"
       (int)
# 4041 "parser.ml"
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
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | BINAND _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | BINXOR _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | BOOLNOT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | LPAR _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | MINUS _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | MULT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | PLUS _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | RECEIVE _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState192 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState192
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState192)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run196 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 32 "parser.mly"
       (int)
# 4124 "parser.ml"
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
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | BINAND _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | BINXOR _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | BOOLNOT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | LPAR _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | MINUS _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | MULT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | PLUS _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | RECEIVE _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 255 "parser.mly"
                                                  ( (List.map (fun d -> Ast.TypeDeclStm d) _2) @ _1 )
# 4215 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 93 "parser.mly"
                                                    ( (List.map (fun var -> Ast.TopTypeDecl var) _2) @ _1 )
# 4226 "parser.ml"
         in
        _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_type_specs : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState169 in
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
# 4255 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 4260 "parser.ml"
            ))), _, (_3 : (Ast.type_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 4264 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.type_decl list) = 
# 99 "parser.mly"
                                                    ( _3 )
# 4270 "parser.ml"
             in
            _menhir_goto_type_decls _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 254 "parser.mly"
                                                  ( (List.map (fun d -> Ast.VarDeclStm d) _2) @ _1 )
# 4295 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 94 "parser.mly"
                                                    ( (List.map (fun var -> Ast.TopVarDecl var) _2) @ _1 )
# 4306 "parser.ml"
         in
        _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

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
# 4335 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 4340 "parser.ml"
            ))), _, (_3 : (Ast.variable_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 4344 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.variable_decl list) = 
# 111 "parser.mly"
                                                    ( _3 )
# 4350 "parser.ml"
             in
            _menhir_goto_var_decls _menhir_env _menhir_stack _menhir_s _v
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
# 4378 "parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.typeT))), (_2 : (
# 5 "parser.mly"
      (int)
# 4383 "parser.ml"
        ))), _, (_3 : (Ast.exp list option))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 211 "parser.mly"
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
      | _ -> raise (Exceptions.SyntaxError ("A cast expression must have exactly one argument", Some _2))
      end
  )
# 4403 "parser.ml"
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
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState67 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState102
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | RSQUARE _ ->
            _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4547 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 179 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 4552 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4565 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 173 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 4570 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4579 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 174 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 4584 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4615 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 171 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 4620 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4653 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 181 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 4658 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77)
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4679 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 180 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 4684 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4705 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 177 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 4710 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4731 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 176 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 4736 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4757 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 178 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 4762 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4783 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 175 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 4788 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4827 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 192 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 4832 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4867 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 172 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 4872 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91)
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4911 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 193 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 4916 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4955 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 195 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 4960 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4999 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 194 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 5004 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 5043 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 196 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 5048 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 5087 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 191 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 5092 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState103 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_8 : (
# 7 "parser.mly"
      (int)
# 5150 "parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 5155 "parser.ml"
            ))), _, (_3 : (Ast.exp option))), _, (_5 : (Ast.exp))), _), _, (_7 : (Ast.exp))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _v : (Ast.primary_exp) = 
# 238 "parser.mly"
                                                         (
    let beg = match _3 with
    | None -> Ast.PrimExp (Ast. IntLit ("0", Ast.Dec))
    | Some e -> e
    in
    Ast.SliceExp (_1, beg, _5, Some _7, _2)
  )
# 5168 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | LCURLY | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 5221 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 183 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 5226 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | LCURLY | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 5277 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 182 "parser.mly"
                                                  ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 5282 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState109 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 7 "parser.mly"
      (int)
# 5340 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 5345 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 209 "parser.mly"
                                                  ( Ast.IndexExp (_1, _3, _2) )
# 5350 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | COLON ->
            _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5365 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 189 "parser.mly"
                                                  ( Ast.Unary (Ast.Ref, _2, _1) )
# 5370 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5379 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 187 "parser.mly"
                                                  ( Ast.Unary (Ast.UBinNOT, _2, _1) )
# 5384 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "parser.mly"
      (int)
# 5393 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 186 "parser.mly"
                                                  ( Ast.Unary (Ast.BoolNOT, _2, _1) )
# 5398 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp list) = 
# 167 "parser.mly"
                                                  ( _3::_1 )
# 5451 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | MenhirState156 | MenhirState151 | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp list) = 
# 166 "parser.mly"
                                                  ( [_1] )
# 5507 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState127 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_6 : (
# 5 "parser.mly"
      (int)
# 5563 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 32 "parser.mly"
       (int)
# 5568 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5572 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))), _, (_5 : (Ast.exp))) = _menhir_stack in
            let _4 = () in
            let _v : (Ast.primary_exp) = 
# 245 "parser.mly"
                                                  ( Ast.AppendExp (_3, _5, _2) )
# 5578 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState133 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 5 "parser.mly"
      (int)
# 5636 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 5 "parser.mly"
      (int)
# 5641 "parser.ml"
            ))), _, (_2 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 170 "parser.mly"
                                                  ( _2 )
# 5646 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5661 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 185 "parser.mly"
                                                  ( Ast.Unary (Ast.UMinus, _2, _1) )
# 5666 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5675 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 188 "parser.mly"
                                                  ( Ast.Unary (Ast.DeRef, _2, _1) )
# 5680 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5689 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 184 "parser.mly"
                                                  ( _2 )
# 5694 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 21 "parser.mly"
      (int)
# 5703 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 190 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("The receive operator '<-' is unsupported in GoLite", _1, None)) )
# 5708 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState140 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | IDENTIFIER _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140)
    | MenhirState272 | MenhirState264 | MenhirState184 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | SEMICOLON _ ->
            _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187)
    | MenhirState192 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState193 in
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
# 5895 "parser.ml"
                )) = _v in
                let ((((_menhir_stack, _menhir_s, (_1 : (
# 32 "parser.mly"
       (int)
# 5900 "parser.ml"
                ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5904 "parser.ml"
                ))), _, (_3 : (Ast.exp))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 5908 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.statement) = 
# 301 "parser.mly"
                                                  ( Ast.Print (_3, true, _5) )
# 5913 "parser.ml"
                 in
                _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193)
    | MenhirState197 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState198 in
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
# 5983 "parser.ml"
                )) = _v in
                let ((((_menhir_stack, _menhir_s, (_1 : (
# 32 "parser.mly"
       (int)
# 5988 "parser.ml"
                ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5992 "parser.ml"
                ))), _, (_3 : (Ast.exp))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 5996 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.statement) = 
# 300 "parser.mly"
                                                  ( Ast.Print (_3, false, _5) )
# 6001 "parser.ml"
                 in
                _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198)
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LCURLY ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState203
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203)
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINANDEQ _v ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINANDNOTEQ _v ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINOREQ _v ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINXOREQ _v ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | DIVEQ _v ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LCURLY ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LSHIFTEQ _v ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MINUSEQ _v ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MINUSMINUS _v ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MODEQ _v ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MULTEQ _v ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | PLUSEQ _v ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | PLUSPLUS _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | RSHIFTEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | SEMICOLON _v ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | SHORTASSIGN _v ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208)
    | MenhirState209 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState210 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6197 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 6202 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 289 "parser.mly"
                                                  (
    let id = match _1 with
    | Ast.PrimExp e ->
      begin match e with
      | Ast.Var (x, _) -> x
      | _ -> raise (Exceptions.SyntaxError ("The left hand side of a short hand assignment must be an id", Some _4))
      end
    | _ -> raise (Exceptions.SyntaxError ("The left hand side of a short hand assignment must be an id", Some _4))
    in
    Ast.VarDeclStm (Ast.VarDeclNoTypeInit (id, _3, _4))
  )
# 6217 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210)
    | MenhirState213 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState214 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6275 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6280 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 286 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Rshift, _3, _4), _4) )
# 6285 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214)
    | MenhirState218 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState219 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6343 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6348 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 278 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BPlus, _3, _4), _4) )
# 6353 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState219)
    | MenhirState221 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState222 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6411 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6416 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 280 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mult, _3, _4), _4) )
# 6421 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222)
    | MenhirState224 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState225 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6479 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6484 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 288 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mod, _3, _4), _4) )
# 6489 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225)
    | MenhirState229 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState230 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6547 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6552 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 279 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BMinus, _3, _4), _4) )
# 6557 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState230)
    | MenhirState232 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState233 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6615 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6620 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 287 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Lshift, _3, _4), _4) )
# 6625 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233)
    | MenhirState235 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState236 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6683 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6688 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 281 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Div, _3, _4), _4) )
# 6693 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState236)
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState239 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6751 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6756 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 284 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinXOR, _3, _4), _4) )
# 6761 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239)
    | MenhirState241 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState242 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6819 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6824 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 283 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinOR, _3, _4), _4) )
# 6829 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242)
    | MenhirState244 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState245 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6887 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6892 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 285 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinANDNOT, _3, _4), _4) )
# 6897 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245)
    | MenhirState247 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState248 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6955 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6960 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 282 "parser.mly"
                                                  ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinAND, _3, _4), _4) )
# 6965 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248)
    | MenhirState250 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState251 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState251 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 7023 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 7028 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 277 "parser.mly"
                                                  ( Ast.AssignStm (_1, _3, _4) )
# 7033 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251)
    | MenhirState260 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState261 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 7091 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 256 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("go statements are unsuported in GoLite", _4, None)) )
# 7098 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState261)
    | MenhirState183 | MenhirState274 | MenhirState266 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINANDEQ _v ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINANDNOTEQ _v ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINOREQ _v ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BINXOREQ _v ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | DIVEQ _v ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | LSHIFTEQ _v ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | MINUSEQ _v ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | MINUSMINUS _v ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | MODEQ _v ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | MULTEQ _v ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | PLUSEQ _v ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | PLUSPLUS _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | RSHIFTEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | SEMICOLON _v ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | SHORTASSIGN _v ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState271 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState271)
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINAND _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINANDEQ _v ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINANDNOT _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINANDNOTEQ _v ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINOR _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINOREQ _v ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINXOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BINXOREQ _v ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BOOLAND _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | BOOLOR _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | DIV _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | DIVEQ _v ->
            _menhir_run235 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | EQ _v ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | GEQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | GT _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | LEQ _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | LSHIFT _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | LSHIFTEQ _v ->
            _menhir_run232 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | LT _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | MINUS _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | MINUSEQ _v ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | MINUSMINUS _v ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | MOD _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | MODEQ _v ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | MULT _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | MULTEQ _v ->
            _menhir_run221 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | NEQ _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | PLUS _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | PLUSEQ _v ->
            _menhir_run218 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | PLUSPLUS _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | RSHIFT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | RSHIFTEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | SEMICOLON _v ->
            _menhir_run212 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | SHORTASSIGN _v ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _v
        | LCURLY ->
            _menhir_reduce57 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState281)
    | _ ->
        _menhir_fail ()

and _menhir_run62 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.primary_exp) -> (
# 7 "parser.mly"
      (int)
# 7271 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
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
    | COLON ->
        _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState62
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_run111 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.primary_exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
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
# 7353 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.primary_exp) = 
# 208 "parser.mly"
                                                  ( Ast.SelectExp (_1, (fst _3), (snd _3)) )
# 7360 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | LPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
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
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | BREAK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
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
# 7433 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 258 "parser.mly"
                                                  ( (Ast.Break)::_1 )
# 7440 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | CONTINUE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
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
# 7467 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 259 "parser.mly"
                                                  ( (Ast.Continue)::_1 )
# 7474 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | FALLTHROUGH ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
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
# 7499 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 261 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("fallthrough statements are unsuported in GoLite", _3, None)) )
# 7506 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | FOR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | BINAND _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | BINXOR _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | BOOLNOT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | LPAR _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | MINUS _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | MULT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | PLUS _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | PRINT _v ->
            _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | PRINTLN _v ->
            _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | RECEIVE _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState263 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | SEMICOLON _ ->
                _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState264)
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | LCURLY ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState263)
    | GO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | BINAND _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | BINXOR _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | BOOLNOT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | LPAR _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | MINUS _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | MULT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | PLUS _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | RECEIVE _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState260 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState260
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState260)
    | GOTO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
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
# 7748 "parser.ml"
                )) = _v in
                let (((_menhir_stack, (_1 : (Ast.statement list))), _), (_3 : (
# 25 "parser.mly"
       (string * int)
# 7753 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Ast.statement list) = 
# 260 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("goto statements are unsuported in GoLite", _4, None)) )
# 7759 "parser.ml"
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
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | IF _v ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | LCURLY ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | PRINT _v ->
        _menhir_run196 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | PRINTLN _v ->
        _menhir_run191 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | RCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (x : (
# 9 "parser.mly"
      (int)
# 7820 "parser.ml"
            )) = _v in
            let _v : (int option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 7825 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN _ | CONTINUE | DECINTLITERAL _ | ELSE | EOF | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | FUNC | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE _ | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | PRINTLN _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (int option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 7833 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
    | RETURN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState183 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | BINAND _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | BINXOR _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | BOOLNOT _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | LPAR _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | MINUS _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | MULT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | PLUS _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | RECEIVE _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | SEMICOLON _ ->
            _menhir_reduce56 _menhir_env (Obj.magic _menhir_stack) MenhirState184
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184)
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
    | TYPE ->
        _menhir_run161 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | VAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState183
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183

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
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState298 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState298)
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : ((string * Ast.typeT) list))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 7956 "parser.ml"
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
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.type_decl list))) = _menhir_stack in
        let _v : (Ast.type_decl list) = 
# 103 "parser.mly"
                                                    ( _2::_1 )
# 7977 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.type_decl)) = _v in
        let _v : (Ast.type_decl list) = 
# 102 "parser.mly"
                                                    ( [_1] )
# 7987 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.type_decl list) = 
# 98 "parser.mly"
                                                    ( [_2] )
# 7999 "parser.ml"
         in
        _menhir_goto_type_decls _menhir_env _menhir_stack _menhir_s _v
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
# 115 "parser.mly"
                                                    ( _2 @ _1 )
# 8016 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.variable_decl list)) = _v in
        let _v : (Ast.variable_decl list) = 
# 114 "parser.mly"
                                                    ( _1 )
# 8026 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.variable_decl list) = 
# 110 "parser.mly"
                                                    ( _2 )
# 8038 "parser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.typeT) -> (
# 5 "parser.mly"
      (int)
# 8047 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
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
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState57 in
        let _v : (Ast.exp list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 8116 "parser.ml"
         in
        _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_goto_primary_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.primary_exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState183 | MenhirState263 | MenhirState274 | MenhirState272 | MenhirState266 | MenhirState264 | MenhirState260 | MenhirState250 | MenhirState247 | MenhirState244 | MenhirState241 | MenhirState238 | MenhirState235 | MenhirState232 | MenhirState229 | MenhirState224 | MenhirState221 | MenhirState218 | MenhirState213 | MenhirState209 | MenhirState201 | MenhirState202 | MenhirState197 | MenhirState192 | MenhirState184 | MenhirState156 | MenhirState151 | MenhirState27 | MenhirState39 | MenhirState40 | MenhirState42 | MenhirState43 | MenhirState44 | MenhirState126 | MenhirState122 | MenhirState57 | MenhirState58 | MenhirState59 | MenhirState107 | MenhirState105 | MenhirState102 | MenhirState100 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState88 | MenhirState86 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState64 | MenhirState62 | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIV _ | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 197 "parser.mly"
                                                  ( Ast.PrimExp _1 )
# 8143 "parser.ml"
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
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126)
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 5 "parser.mly"
      (int)
# 8248 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 32 "parser.mly"
       (int)
# 8253 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 8257 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 247 "parser.mly"
                                                  ( Ast.CapExp (_3, _2) )
# 8262 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 5 "parser.mly"
      (int)
# 8287 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 32 "parser.mly"
       (int)
# 8292 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 8296 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 246 "parser.mly"
                                                  ( Ast.LenExp (_3, _2) )
# 8301 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run182 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.statement list) = 
# 252 "parser.mly"
                                                  ( [] )
# 8321 "parser.ml"
     in
    _menhir_goto_statement_list _menhir_env _menhir_stack _v

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
# 147 "parser.mly"
                                                  ( Ast.StructType _3 )
# 8346 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_reduce118 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
       (string * int)
# 8357 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8363 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Ast.typeT) = 
# 140 "parser.mly"
                                                  ( Ast.DefinedType ((fst _1), None) )
# 8368 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_typeT : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 7 "parser.mly"
      (int)
# 8382 "parser.ml"
        ))), _, (_2 : (
# 7 "parser.mly"
      (int)
# 8386 "parser.ml"
        ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 142 "parser.mly"
                                                  ( Ast.SliceType _3 )
# 8391 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState183 | MenhirState274 | MenhirState272 | MenhirState263 | MenhirState266 | MenhirState264 | MenhirState260 | MenhirState250 | MenhirState247 | MenhirState244 | MenhirState241 | MenhirState238 | MenhirState235 | MenhirState232 | MenhirState229 | MenhirState224 | MenhirState221 | MenhirState218 | MenhirState213 | MenhirState209 | MenhirState202 | MenhirState201 | MenhirState197 | MenhirState192 | MenhirState184 | MenhirState156 | MenhirState151 | MenhirState27 | MenhirState39 | MenhirState40 | MenhirState43 | MenhirState44 | MenhirState46 | MenhirState52 | MenhirState126 | MenhirState122 | MenhirState57 | MenhirState58 | MenhirState59 | MenhirState107 | MenhirState105 | MenhirState102 | MenhirState100 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState88 | MenhirState86 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState64 | MenhirState62 | MenhirState60 | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) _v
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
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 5 "parser.mly"
      (int)
# 8419 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_3 : (
# 5 "parser.mly"
      (int)
# 8424 "parser.ml"
            ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 210 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("Type assertions are unsupported in GoLite", _3, None)) )
# 8430 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LPAR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 7 "parser.mly"
      (int)
# 8458 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (
# 7 "parser.mly"
      (int)
# 8462 "parser.ml"
        ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 141 "parser.mly"
                                                  ( Ast.ArrayType (_4, _2) )
# 8467 "parser.ml"
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
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | IDENTIFIER _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState144
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
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
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), (_2 : (
# 7 "parser.mly"
      (int)
# 8519 "parser.ml"
        ))), _, (_3 : (Ast.typeT))), (_4 : (
# 7 "parser.mly"
      (int)
# 8523 "parser.ml"
        ))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 144 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("Map types are unsuported in GoLite", _2, None)) )
# 8529 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 8538 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 143 "parser.mly"
                                                  ( Ast.PointerType _2 )
# 8543 "parser.ml"
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
# 8558 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), _, (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : ((string * Ast.typeT) list) = 
# 155 "parser.mly"
                                           (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 8568 "parser.ml"
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
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState156 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState156
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 8655 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 118 "parser.mly"
                                                    ( List.map (fun iden -> Ast.VarDeclTypeNoInit (_2, iden, _3)) _1 )
# 8661 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState164 ->
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
# 8682 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8687 "parser.ml"
            ))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 8691 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 106 "parser.mly"
                                                    ( raise (Exceptions.UnsuportedError ("Type aliases are unsuported in GoLite", (snd _1), None)) )
# 8696 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
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
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 8717 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8722 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 107 "parser.mly"
                                                    ( Ast.TypeDecl (_2, (fst _1), (snd _1)) )
# 8727 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 8743 "parser.ml"
         in
        _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState295 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 136 "parser.mly"
                                                  ( List.map (fun iden -> (iden, _2)) _1 )
# 8753 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | MenhirState299 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : ((string * Ast.typeT) list))), _, (_3 : (string list))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.typeT) list) = 
# 137 "parser.mly"
                                                  ( (List.map (fun iden -> (iden, _4)) _3) @ _1 )
# 8764 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_RECEIVE_ : _menhir_env -> 'ttv_tail -> (int option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (int option)) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (
# 28 "parser.mly"
      (int)
# 8778 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Ast.typeT) = 
# 146 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("Channel types are unsupported in GoLite", _1, None)) )
# 8783 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run147 : _menhir_env -> 'ttv_tail * _menhir_state * (string list) -> _menhir_state -> 'ttv_return =
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
# 8805 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 163 "parser.mly"
                                                  ( (fst _3)::_1 )
# 8812 "parser.ml"
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
# 8825 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 44 "parser.mly"
       (string)
# 8833 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 207 "parser.mly"
                                                  ( Ast.StrLit (_1) )
# 8838 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "parser.mly"
       (string)
# 8845 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 43 "parser.mly"
       (string)
# 8853 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 206 "parser.mly"
                                                  ( Ast.RuneLit (_1) )
# 8858 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (int)
# 8865 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 8936 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
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
# 38 "parser.mly"
       (string)
# 9007 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 9015 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 204 "parser.mly"
                                                  ( Ast.IntLit (_1, Ast.Oct) )
# 9020 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9027 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9098 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
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
# 5 "parser.mly"
      (int)
# 9169 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
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
# 32 "parser.mly"
       (int)
# 9240 "parser.ml"
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
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 9309 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR _ ->
        _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack)
    | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIV _ | DIVEQ _ | DOT | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 9323 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 200 "parser.mly"
                                                  ( Ast.Var ((fst _1), (snd _1)) )
# 9328 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "parser.mly"
       (string)
# 9341 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 40 "parser.mly"
       (string)
# 9349 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 205 "parser.mly"
                                                  ( Ast.IntLit (_1, Ast.Hex) )
# 9354 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (float)
# 9361 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (float)
# 9369 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 201 "parser.mly"
                                                  ( Ast.FloatLit (_1) )
# 9374 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "parser.mly"
       (string)
# 9381 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 9389 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 202 "parser.mly"
                                                  ( Ast.IntLit (_1, Ast.Dec) )
# 9394 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 32 "parser.mly"
       (int)
# 9401 "parser.ml"
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
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 9470 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9541 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
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

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "parser.mly"
       (string)
# 9612 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 39 "parser.mly"
       (string)
# 9620 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 203 "parser.mly"
                                                  ( Ast.IntLit (_1, Ast.Bin) )
# 9625 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9632 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
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

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 32 "parser.mly"
       (int)
# 9703 "parser.ml"
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
        | APPEND _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | BININTLITERAL _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | CAP _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | DECINTLITERAL _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | FLOATLITERAL _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | HEXINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | IDENTIFIER _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | LEN _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | OCTINTLITERAL _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run163 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 9772 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState163 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState164
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164)
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState163
    | IDENTIFIER _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState163
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState163
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState163
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState163
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState163
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163

and _menhir_goto_option_typeT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LCURLY ->
        _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181

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
# 154 "parser.mly"
                                                  ( [] )
# 9866 "parser.ml"
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
# 150 "parser.mly"
                                                  ( Ast.StrType )
# 9884 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 151 "parser.mly"
                                                  ( Ast.RuneType )
# 9896 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9903 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENTIFIER _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState24
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
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState26
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
# 9985 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BINAND _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BININTLITERAL _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BINXOR _v ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BOOLNOT _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | CAP _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | CHAN _v ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | DECINTLITERAL _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATLITERAL _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | HEXINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IDENTIFIER _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INTERFACE _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LEN _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LPAR _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MULT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | OCTINTLITERAL _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | PLUS _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RECEIVE _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RSQUARE _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState27 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30
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

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 148 "parser.mly"
                                                  ( Ast.IntType )
# 10094 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 28 "parser.mly"
      (int)
# 10101 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 28 "parser.mly"
      (int)
# 10109 "parser.ml"
    )) = _v in
    let _v : (Ast.typeT) = 
# 145 "parser.mly"
                                                  ( raise (Exceptions.UnsuportedError ("Interface types are unsupported in GoLite", _1, None)) )
# 10114 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 10121 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce118 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 149 "parser.mly"
                                                  ( Ast.FloatType )
# 10136 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 28 "parser.mly"
      (int)
# 10143 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RECEIVE _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (
# 21 "parser.mly"
      (int)
# 10157 "parser.ml"
        )) = _v in
        let _v : (int option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 10162 "parser.ml"
         in
        _menhir_goto_option_RECEIVE_ _menhir_env _menhir_stack _v
    | ASSIGN _ | COMMA | LCURLY | LPAR _ | RPAR _ | RSQUARE _ | SEMICOLON _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (int option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 10170 "parser.ml"
         in
        _menhir_goto_option_RECEIVE_ _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
            | APPEND _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | BINAND _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | BININTLITERAL _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | BINXOR _v ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | BOOLNOT _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | CAP _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | CHAN _v ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | DECINTLITERAL _v ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | FLOATLITERAL _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | HEXINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | IDENTIFIER _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | INTERFACE _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | LEN _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | LPAR _v ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | MINUS _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | MULT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | OCTINTLITERAL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | PLUS _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | RECEIVE _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState151
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151)
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | COMMA ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState16
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
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | COMMA ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
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
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _v
        | COMMA ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState295
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState295
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState295
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState295
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState295 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState295
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState295
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState295
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState295)
    | MenhirState298 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
        | COMMA ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState299 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState299
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState299)
    | _ ->
        _menhir_fail ()

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run161 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
    | LPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState161 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run163 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState299 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState298 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState295 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState281 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState277 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState275 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState274 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState272 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState271 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState269 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState267 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState266 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState264 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState260 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState254 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState251 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState250 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState248 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState247 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState244 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState241 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState239 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState236 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState235 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState233 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState232 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState230 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState229 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState224 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState222 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState221 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState219 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState218 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState214 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState213 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState210 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState209 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState203 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState202 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState198 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState197 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState193 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState192 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState187 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState184 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState164 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState163 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState156 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState144 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState141 ->
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
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState106 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState94 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
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
        | CHAN _v ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
        | INTERFACE _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState179 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState179
        | LCURLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState179 in
            let _v : (Ast.typeT option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 11046 "parser.ml"
             in
            _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 11063 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 25 "parser.mly"
       (string * int)
# 11071 "parser.ml"
    )) = _v in
    let _v : (string list) = 
# 162 "parser.mly"
                                                  ( [(fst _1)] )
# 11076 "parser.ml"
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
        let _menhir_s = MenhirState8 in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, (_1 : (Ast.package_clause))), (_2 : (unit))), (_3 : (Ast.top_level_decl list))) = _menhir_stack in
        let _4 = () in
        let _v : (
# 60 "parser.mly"
       (Ast.program)
# 11096 "parser.ml"
        ) = 
# 64 "parser.mly"
                                                              (
    let main = ref (Ast.TopFuncDecl (Ast.FuncDecl ("", [], Ast.VoidType, Ast.StmsBlock [], -1))) in
    let rec extract_main decls =
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | Ast.TopFuncDecl (Ast.FuncDecl ("main", [], Ast.VoidType, _, _)) ->
        main := d;
        decls'
      | _ -> d::(extract_main decls')
      end
    in
    let witout_main = extract_main _3 in
    if List.length witout_main == List.length _3 then
      raise (Exceptions.SyntaxError ("The program must have a function called main which takes no arguments and returns nothing", None))
    else
      Ast.Program (_1, witout_main @ [!main])
  )
# 11118 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 60 "parser.mly"
       (Ast.program)
# 11125 "parser.ml"
        )) = _v in
        Obj.magic _1
    | FUNC ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState8 in
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
            | LPAR _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IDENTIFIER _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
                | RPAR _ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState177 in
                    let _v : ((string * Ast.typeT) list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 11155 "parser.ml"
                     in
                    _menhir_goto_option_func_params_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177)
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
    | TYPE ->
        _menhir_run161 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | VAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_goto_import_decls : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.top_level_decl list) = 
# 92 "parser.mly"
                                                    ( [] )
# 11191 "parser.ml"
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
       (Ast.program)
# 11210 "parser.ml"
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
# 11242 "parser.ml"
                )) = _v in
                let (_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 11247 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 85 "parser.mly"
                                                    ( Ast.Package (fst _2) )
# 11253 "parser.ml"
                 in
                let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | IMPORT _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_1 : (
# 28 "parser.mly"
      (int)
# 11267 "parser.ml"
                    )) = _v in
                    let _v : (unit) = 
# 89 "parser.mly"
                                                    ( raise (Exceptions.UnsuportedError (("Imports are unsupported in GoLite"), _1, None)) )
# 11272 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | FUNC | TYPE | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 88 "parser.mly"
                                                    ( () )
# 11280 "parser.ml"
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
  


# 11308 "parser.ml"
