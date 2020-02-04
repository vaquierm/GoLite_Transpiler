
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
# 42 "parser.mly"
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
# 44 "parser.mly"
       (string)
# 66 "parser.ml"
  )
    | RANGE
    | PRINTLN of (
# 31 "parser.mly"
       (int)
# 72 "parser.ml"
  )
    | PRINT of (
# 31 "parser.mly"
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
# 37 "parser.mly"
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
# 31 "parser.mly"
       (int)
# 174 "parser.ml"
  )
    | LCURLY
    | INTTYPE
    | INTERFACE
    | IMPORT
    | IF of (
# 27 "parser.mly"
      (int)
# 183 "parser.ml"
  )
    | IDENTIFIER of (
# 25 "parser.mly"
       (string * int)
# 188 "parser.ml"
  )
    | HEXINTLITERAL of (
# 39 "parser.mly"
       (string)
# 193 "parser.ml"
  )
    | GT of (
# 23 "parser.mly"
      (int)
# 198 "parser.ml"
  )
    | GOTO
    | GO
    | GEQ of (
# 23 "parser.mly"
      (int)
# 205 "parser.ml"
  )
    | FUNC
    | FOR of (
# 27 "parser.mly"
      (int)
# 211 "parser.ml"
  )
    | FLOATTYPE
    | FLOATLITERAL of (
# 41 "parser.mly"
       (float)
# 217 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 23 "parser.mly"
      (int)
# 223 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 14 "parser.mly"
      (int)
# 231 "parser.ml"
  )
    | DIV of (
# 13 "parser.mly"
      (int)
# 236 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 36 "parser.mly"
       (string)
# 243 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 33 "parser.mly"
       (string)
# 250 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN
    | CASE
    | CAP of (
# 31 "parser.mly"
       (int)
# 259 "parser.ml"
  )
    | BREAK
    | BOOLTYPE
    | BOOLOR of (
# 17 "parser.mly"
      (int)
# 266 "parser.ml"
  )
    | BOOLNOT of (
# 17 "parser.mly"
      (int)
# 271 "parser.ml"
  )
    | BOOLLITERAL of (
# 40 "parser.mly"
       (bool)
# 276 "parser.ml"
  )
    | BOOLAND of (
# 17 "parser.mly"
      (int)
# 281 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 34 "parser.mly"
       (string)
# 286 "parser.ml"
  )
    | BINXOREQ of (
# 14 "parser.mly"
      (int)
# 291 "parser.ml"
  )
    | BINXOR of (
# 13 "parser.mly"
      (int)
# 296 "parser.ml"
  )
    | BINOREQ of (
# 14 "parser.mly"
      (int)
# 301 "parser.ml"
  )
    | BINOR of (
# 13 "parser.mly"
      (int)
# 306 "parser.ml"
  )
    | BININTLITERAL of (
# 38 "parser.mly"
       (string)
# 311 "parser.ml"
  )
    | BINANDNOTEQ of (
# 14 "parser.mly"
      (int)
# 316 "parser.ml"
  )
    | BINANDNOT of (
# 13 "parser.mly"
      (int)
# 321 "parser.ml"
  )
    | BINANDEQ of (
# 14 "parser.mly"
      (int)
# 326 "parser.ml"
  )
    | BINAND of (
# 13 "parser.mly"
      (int)
# 331 "parser.ml"
  )
    | ASSIGN of (
# 19 "parser.mly"
      (int)
# 336 "parser.ml"
  )
    | APPEND of (
# 31 "parser.mly"
       (int)
# 341 "parser.ml"
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
  | MenhirState297
  | MenhirState296
  | MenhirState293
  | MenhirState279
  | MenhirState277
  | MenhirState275
  | MenhirState273
  | MenhirState272
  | MenhirState270
  | MenhirState269
  | MenhirState267
  | MenhirState265
  | MenhirState264
  | MenhirState262
  | MenhirState261
  | MenhirState259
  | MenhirState258
  | MenhirState252
  | MenhirState249
  | MenhirState248
  | MenhirState246
  | MenhirState245
  | MenhirState243
  | MenhirState242
  | MenhirState240
  | MenhirState239
  | MenhirState237
  | MenhirState236
  | MenhirState234
  | MenhirState233
  | MenhirState231
  | MenhirState230
  | MenhirState228
  | MenhirState227
  | MenhirState223
  | MenhirState222
  | MenhirState220
  | MenhirState219
  | MenhirState217
  | MenhirState216
  | MenhirState212
  | MenhirState211
  | MenhirState208
  | MenhirState207
  | MenhirState206
  | MenhirState203
  | MenhirState201
  | MenhirState200
  | MenhirState199
  | MenhirState196
  | MenhirState195
  | MenhirState191
  | MenhirState190
  | MenhirState185
  | MenhirState182
  | MenhirState181
  | MenhirState179
  | MenhirState177
  | MenhirState175
  | MenhirState167
  | MenhirState162
  | MenhirState161
  | MenhirState160
  | MenhirState159
  | MenhirState154
  | MenhirState149
  | MenhirState142
  | MenhirState139
  | MenhirState138
  | MenhirState131
  | MenhirState125
  | MenhirState124
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState110
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState104
  | MenhirState103
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
  | MenhirState73
  | MenhirState72
  | MenhirState70
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState62
  | MenhirState60
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState53
  | MenhirState50
  | MenhirState44
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState38
  | MenhirState37
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
   

# 504 "parser.ml"

let rec _menhir_run120 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState120
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120

and _menhir_goto_for_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.statement)) = _v in
    let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
    let _v : (Ast.statement list) = 
# 245 "parser.mly"
                                              (
    let for_stm = match _2 with
    | Ast.ForStm (None, cond, None, block, line) ->
      Ast.WhileStm (cond, block, line)
    | _ -> _2
    in
    for_stm::_1
  )
# 588 "parser.ml"
     in
    _menhir_goto_statement_list _menhir_env _menhir_stack _v

and _menhir_goto_if_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState203 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_6 : (Ast.statement)) = _v in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 602 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 285 "parser.mly"
                                                   (
    let inner_else = Ast.StmsBlock ([_6])
    in
    let inner = Ast.IfStm (_3, _4, Some inner_else, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 614 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState252 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_5 : (Ast.statement)) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 624 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 297 "parser.mly"
                                  (
    let b = Ast.StmsBlock ([_5])
    in
    Ast.IfStm (_2, _3, Some b, _1) 
  )
# 634 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.statement)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 244 "parser.mly"
                                              ( _2::_1 )
# 645 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState60 ->
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
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
            | RSQUARE _ ->
                _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 ->
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
# 745 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 750 "parser.ml"
            ))), _, (_3 : (Ast.exp option))), _, (_5 : (Ast.exp option))) = _menhir_stack in
            let _4 = () in
            let _v : (Ast.primary_exp) = 
# 208 "parser.mly"
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
# 766 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState182 ->
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
# 787 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp option))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 238 "parser.mly"
                                              ( (Ast.Return (_3, _4))::_1 )
# 794 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState262 ->
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | PRINT _v ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | PRINTLN _v ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | SEMICOLON _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState264 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LCURLY ->
                    _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState265
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState265)
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState264
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState270 ->
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | PRINT _v ->
                _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | PRINTLN _v ->
                _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | SEMICOLON _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState272 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LCURLY ->
                    _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState273
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState273)
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState272 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState272
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState277
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState277)
    | _ ->
        _menhir_fail ()

and _menhir_run207 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 1008 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState207

and _menhir_run210 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 9 "parser.mly"
      (int)
# 1079 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (
# 9 "parser.mly"
      (int)
# 1087 "parser.ml"
    )) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
    let _v : (Ast.statement) = 
# 255 "parser.mly"
                                              ( Ast.ExpStm (_1, _2) )
# 1093 "parser.ml"
     in
    _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run211 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1100 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211

and _menhir_run214 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 1171 "parser.ml"
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
# 1185 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 1190 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 256 "parser.mly"
                                              ( Ast.ExpStm (Ast.Binop (_1, Ast.BPlus, _1, _3), _3) )
# 1195 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run216 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1208 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState216

and _menhir_run219 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1279 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState219
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState219

and _menhir_run222 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1350 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState222
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222

and _menhir_run225 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 1421 "parser.ml"
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
# 1435 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 1440 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 257 "parser.mly"
                                              ( Ast.ExpStm (Ast.Binop (_1, Ast.BMinus, _1, _3), _3) )
# 1445 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run227 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1458 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState227
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227

and _menhir_run230 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1529 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState230 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState230
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState230

and _menhir_run233 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1600 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState233 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState233
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState233

and _menhir_run236 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1671 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState236
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState236

and _menhir_run239 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1742 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState239
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239

and _menhir_run242 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1813 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState242
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242

and _menhir_run245 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1884 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState245
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245

and _menhir_run248 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 1955 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState248 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState248
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248

and _menhir_goto_simple_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState199 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200)
    | MenhirState264 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState267
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState267)
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState270 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | SEMICOLON _ ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState270
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState270)
    | MenhirState272 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState275
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275)
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.statement))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 243 "parser.mly"
                                              ( _2::_1 )
# 2188 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp_list : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack)
        | RPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.exp list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2211 "parser.ml"
             in
            _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState149 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 2234 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 2239 "parser.ml"
            ))), _, (_3 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 101 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, _4)) _1 _3 )
# 2244 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run120 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 9 "parser.mly"
      (int)
# 2267 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))), (_3 : (
# 19 "parser.mly"
      (int)
# 2272 "parser.ml"
            ))), _, (_4 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 100 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclTypeInit (_2, iden, exp, _5)) _1 _4 )
# 2277 "parser.ml"
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

and _menhir_reduce55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (Ast.exp))) = _menhir_stack in
    let _v : (Ast.exp option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2295 "parser.ml"
     in
    _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run66 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2302 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
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

and _menhir_run72 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2373 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
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

and _menhir_run86 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2444 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
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

and _menhir_run68 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2515 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
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
# 2586 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState74
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
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
# 13 "parser.mly"
      (int)
# 2657 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
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

and _menhir_run90 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2728 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
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

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2799 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
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

and _menhir_run92 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2870 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
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

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2941 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
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
# 3012 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
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
# 3083 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
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

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3154 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
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

and _menhir_run103 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 3225 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState103
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

and _menhir_run105 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 3296 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
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

and _menhir_run78 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3367 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
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

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3438 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
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
# 3509 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
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
# 3580 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
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

and _menhir_goto_option_SEMICOLON_ : _menhir_env -> 'ttv_tail -> (int option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_4 : (int option)) = _v in
    let (((_menhir_stack, _menhir_s), (_2 : (Ast.statement list))), _) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (Ast.block) = 
# 230 "parser.mly"
                                              ( Ast.StmsBlock _2 )
# 3659 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState201 ->
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
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
            | LCURLY ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState203
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203)
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | PRINTLN _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3686 "parser.ml"
            ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 304 "parser.mly"
                                 (
    let inner = Ast.IfStm (_3, _4, None, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3695 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState203 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3710 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 292 "parser.mly"
                                           (
    let inner = Ast.IfStm (_3, _4, Some _6, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3720 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState206 ->
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
                _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _v
            | LCURLY ->
                _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState252
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState252)
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | PRINTLN _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3746 "parser.ml"
            ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 303 "parser.mly"
                ( Ast.IfStm (_2, _3, None, _1) )
# 3751 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState252 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3766 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))), _, (_5 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 302 "parser.mly"
                          ( Ast.IfStm (_2, _3, Some _5, _1) )
# 3772 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState265 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3781 "parser.ml"
        ))), _, (_2 : (
# 9 "parser.mly"
      (int)
# 3785 "parser.ml"
        ))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3789 "parser.ml"
        ))), _, (_5 : (
# 9 "parser.mly"
      (int)
# 3793 "parser.ml"
        ))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 323 "parser.mly"
                                                (
    Ast.ForStm (None, _3, None, _6, _1)
  )
# 3800 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState267 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3809 "parser.ml"
        ))), _, (_2 : (
# 9 "parser.mly"
      (int)
# 3813 "parser.ml"
        ))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3817 "parser.ml"
        ))), _, (_5 : (Ast.statement))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 317 "parser.mly"
                                                       (
    Ast.ForStm (None, _3, Some _5, _6, _1)
  )
# 3824 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState273 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3833 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3837 "parser.ml"
        ))), _, (_5 : (
# 9 "parser.mly"
      (int)
# 3841 "parser.ml"
        ))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 320 "parser.mly"
                                                       (
    Ast.ForStm (Some _2, _3, None, _6, _1)
  )
# 3848 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState275 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3857 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3861 "parser.ml"
        ))), _, (_5 : (Ast.statement))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 314 "parser.mly"
                                                              (
    Ast.ForStm (Some _2, _3, Some _5, _6, _1)
  )
# 3868 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState277 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3877 "parser.ml"
        ))), _, (_2 : (Ast.exp option))), _, (_3 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 311 "parser.mly"
                  (
    Ast.WhileStm (_2, _3, _1)
  )
# 3884 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 234 "parser.mly"
                                              ( (Ast.BlockStm _2)::_1  )
# 3894 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((((_menhir_stack, _menhir_s), (_2 : (
# 25 "parser.mly"
       (string * int)
# 3903 "parser.ml"
        ))), (_3 : (
# 5 "parser.mly"
      (int)
# 3907 "parser.ml"
        ))), _, (_4 : ((string * Ast.typeT) list option))), (_5 : (
# 5 "parser.mly"
      (int)
# 3911 "parser.ml"
        ))), _, (_6 : (Ast.typeT option))), _, (_7 : (Ast.block))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.func_decl) = 
# 104 "parser.mly"
                                                                    ( 
      let params = match _4 with
      | None -> []
      | Some p -> p
      in
      let retType = match _6 with
      | None -> Ast.VoidType
      | Some t -> t
      in
      Ast.FuncDecl (params, retType, _7, (snd _2))
    )
# 3927 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.func_decl)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 76 "parser.mly"
                              ( (Ast.TopFuncDecl _2) :: _1 )
# 3936 "parser.ml"
         in
        _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run199 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
      (int)
# 3945 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState199
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | PRINT _v ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | PRINTLN _v ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199

and _menhir_reduce54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.exp option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 4022 "parser.ml"
     in
    _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run189 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "parser.mly"
       (int)
# 4029 "parser.ml"
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
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState190
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run194 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "parser.mly"
       (int)
# 4112 "parser.ml"
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
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState195
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 236 "parser.mly"
                                              ( (List.map (fun d -> Ast.TypeDeclStm d) _2) @ _1 )
# 4203 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 74 "parser.mly"
                               ( (List.map (fun var -> Ast.TopTypeDecl var) _2) @ _1 )
# 4214 "parser.ml"
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
        _menhir_run161 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState167 in
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
# 4243 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 4248 "parser.ml"
            ))), _, (_3 : (Ast.type_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 4252 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.type_decl list) = 
# 80 "parser.mly"
                                        ( _3 )
# 4258 "parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 235 "parser.mly"
                                              ( (List.map (fun d -> Ast.VarDeclStm d) _2) @ _1 )
# 4283 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 75 "parser.mly"
                              ( (List.map (fun var -> Ast.TopVarDecl var) _2) @ _1 )
# 4294 "parser.ml"
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
# 4323 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 4328 "parser.ml"
            ))), _, (_3 : (Ast.variable_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 4332 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.variable_decl list) = 
# 92 "parser.mly"
                                      ( _3 )
# 4338 "parser.ml"
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
# 4366 "parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.typeT))), (_2 : (
# 5 "parser.mly"
      (int)
# 4371 "parser.ml"
        ))), _, (_3 : (Ast.exp list option))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 192 "parser.mly"
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
# 4391 "parser.ml"
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
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState65 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100)
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | RSQUARE _ ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65)
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4535 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 160 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 4540 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4553 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 154 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 4558 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4567 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 155 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 4572 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4603 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 152 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 4608 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4641 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 162 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 4646 "parser.ml"
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
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4667 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 161 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 4672 "parser.ml"
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
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4693 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 158 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 4698 "parser.ml"
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
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4719 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 157 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 4724 "parser.ml"
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
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4745 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 159 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 4750 "parser.ml"
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
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4771 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 156 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 4776 "parser.ml"
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
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4815 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 173 "parser.mly"
                                            ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 4820 "parser.ml"
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
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4855 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 153 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 4860 "parser.ml"
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
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4899 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 174 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 4904 "parser.ml"
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
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4943 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 176 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 4948 "parser.ml"
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
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4987 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 175 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 4992 "parser.ml"
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
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 5031 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 177 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 5036 "parser.ml"
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
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 5075 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 172 "parser.mly"
                                            ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 5080 "parser.ml"
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
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState101 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_8 : (
# 7 "parser.mly"
      (int)
# 5138 "parser.ml"
            )) = _v in
            let ((((((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 5143 "parser.ml"
            ))), _, (_3 : (Ast.exp option))), _, (_5 : (Ast.exp))), _), _, (_7 : (Ast.exp))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _v : (Ast.primary_exp) = 
# 219 "parser.mly"
                                                          (
    let beg = match _3 with
    | None -> Ast.PrimExp (Ast. IntLit ("0", Ast.Dec))
    | Some e -> e
    in
    Ast.SliceExp (_1, beg, _5, Some _7, _2)
  )
# 5156 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | LCURLY | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 5209 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 164 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 5214 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIVEQ _ | LCURLY | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 5265 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 163 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 5270 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState107 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 7 "parser.mly"
      (int)
# 5328 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 5333 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 190 "parser.mly"
                                            ( Ast.IndexExp (_1, _3, _2) )
# 5338 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | COLON ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5353 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 170 "parser.mly"
                                            ( Ast.Unary (Ast.Ref, _2, _1) )
# 5358 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5367 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 168 "parser.mly"
                                            ( Ast.Unary (Ast.UBinNOT, _2, _1) )
# 5372 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "parser.mly"
      (int)
# 5381 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 167 "parser.mly"
                                            ( Ast.Unary (Ast.BoolNOT, _2, _1) )
# 5386 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp list) = 
# 148 "parser.mly"
                                  ( _3::_1 )
# 5439 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
    | MenhirState154 | MenhirState149 | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp list) = 
# 147 "parser.mly"
                                  ( [_1] )
# 5495 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122)
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState125 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_6 : (
# 5 "parser.mly"
      (int)
# 5551 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 5556 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5560 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))), _, (_5 : (Ast.exp))) = _menhir_stack in
            let _4 = () in
            let _v : (Ast.primary_exp) = 
# 226 "parser.mly"
                                            ( Ast.AppendExp (_3, _5, _2) )
# 5566 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState131 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 5 "parser.mly"
      (int)
# 5624 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 5 "parser.mly"
      (int)
# 5629 "parser.ml"
            ))), _, (_2 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 151 "parser.mly"
                                            ( _2 )
# 5634 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5649 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 166 "parser.mly"
                                            ( Ast.Unary (Ast.UMinus, _2, _1) )
# 5654 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5663 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 169 "parser.mly"
                                            ( Ast.Unary (Ast.DeRef, _2, _1) )
# 5668 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5677 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 165 "parser.mly"
                                            ( _2 )
# 5682 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 21 "parser.mly"
      (int)
# 5691 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 171 "parser.mly"
                                            ( failwith ("Line: " ^ (string_of_int _1) ^ " Go lite does not support the type <-") )
# 5696 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState138 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | IDENTIFIER _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState139
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138)
    | MenhirState270 | MenhirState262 | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | SEMICOLON _ ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185)
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState191 in
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
# 5883 "parser.ml"
                )) = _v in
                let ((((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 5888 "parser.ml"
                ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5892 "parser.ml"
                ))), _, (_3 : (Ast.exp))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 5896 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.statement) = 
# 282 "parser.mly"
                                              ( Ast.Print (_3, true, _5) )
# 5901 "parser.ml"
                 in
                _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState191)
    | MenhirState195 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState196 in
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
# 5971 "parser.ml"
                )) = _v in
                let ((((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 5976 "parser.ml"
                ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5980 "parser.ml"
                ))), _, (_3 : (Ast.exp))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 5984 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.statement) = 
# 281 "parser.mly"
                                              ( Ast.Print (_3, false, _5) )
# 5989 "parser.ml"
                 in
                _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196)
    | MenhirState200 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | LCURLY ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState201
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201)
    | MenhirState199 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINANDEQ _v ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINANDNOTEQ _v ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINOREQ _v ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINXOREQ _v ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | DIVEQ _v ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | LCURLY ->
            _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | LSHIFTEQ _v ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MINUSEQ _v ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MINUSMINUS _v ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MODEQ _v ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MULTEQ _v ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | PLUSEQ _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | PLUSPLUS _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | RSHIFTEQ _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | SEMICOLON _v ->
            _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | SHORTASSIGN _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206)
    | MenhirState207 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState208 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6185 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 6190 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 270 "parser.mly"
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
# 6205 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208)
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState212 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6263 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6268 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 267 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Rshift, _3, _4), _4) )
# 6273 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212)
    | MenhirState216 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState217 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6331 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6336 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 259 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BPlus, _3, _4), _4) )
# 6341 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217)
    | MenhirState219 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState220 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6399 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6404 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 261 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mult, _3, _4), _4) )
# 6409 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220)
    | MenhirState222 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState223 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6467 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6472 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 269 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mod, _3, _4), _4) )
# 6477 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223)
    | MenhirState227 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState228 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6535 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6540 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 260 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BMinus, _3, _4), _4) )
# 6545 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState228)
    | MenhirState230 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState231 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6603 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6608 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 268 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Lshift, _3, _4), _4) )
# 6613 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState231)
    | MenhirState233 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState234 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6671 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6676 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 262 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Div, _3, _4), _4) )
# 6681 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState234)
    | MenhirState236 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState237 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState237 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6739 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6744 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 265 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinXOR, _3, _4), _4) )
# 6749 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState237)
    | MenhirState239 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState240 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState240 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6807 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6812 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 264 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinOR, _3, _4), _4) )
# 6817 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState240)
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState243 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState243 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6875 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6880 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 266 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinANDNOT, _3, _4), _4) )
# 6885 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState243)
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState246 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6943 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6948 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 263 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinAND, _3, _4), _4) )
# 6953 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState246)
    | MenhirState248 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState249 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState249 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 7011 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 7016 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 258 "parser.mly"
                                              ( Ast.AssignStm (_1, _3, _4) )
# 7021 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState249)
    | MenhirState258 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState259 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState259 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 7079 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 237 "parser.mly"
                                              ( failwith "go statements are not supported in GoLite" )
# 7086 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState259)
    | MenhirState181 | MenhirState272 | MenhirState264 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINANDEQ _v ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINANDNOTEQ _v ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINOREQ _v ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BINXOREQ _v ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | DIVEQ _v ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | LSHIFTEQ _v ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | MINUSEQ _v ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | MINUSMINUS _v ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | MODEQ _v ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | MULTEQ _v ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | PLUSEQ _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | PLUSPLUS _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | RSHIFTEQ _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | SEMICOLON _v ->
            _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | SHORTASSIGN _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState269 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState269)
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run248 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINAND _v ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINANDEQ _v ->
            _menhir_run245 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINANDNOT _v ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINANDNOTEQ _v ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINOR _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINOREQ _v ->
            _menhir_run239 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINXOR _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BINXOREQ _v ->
            _menhir_run236 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BOOLAND _v ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | BOOLOR _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | DIV _v ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | DIVEQ _v ->
            _menhir_run233 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | EQ _v ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | GEQ _v ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | GT _v ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | LEQ _v ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | LSHIFT _v ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | LSHIFTEQ _v ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | LT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MINUS _v ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MINUSEQ _v ->
            _menhir_run227 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MINUSMINUS _v ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MOD _v ->
            _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MODEQ _v ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MULT _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MULTEQ _v ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | NEQ _v ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | PLUS _v ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | PLUSEQ _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | PLUSPLUS _v ->
            _menhir_run214 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | RSHIFT _v ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | RSHIFTEQ _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | SEMICOLON _v ->
            _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | SHORTASSIGN _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | LCURLY ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279)
    | _ ->
        _menhir_fail ()

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.primary_exp) -> (
# 7 "parser.mly"
      (int)
# 7259 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
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
    | COLON ->
        _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run109 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.primary_exp) -> 'ttv_return =
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
# 7341 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.primary_exp) = 
# 189 "parser.mly"
                                            ( Ast.SelectExp (_1, (fst _3), (snd _3)) )
# 7348 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | LPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
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
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | BREAK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
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
# 7421 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 239 "parser.mly"
                                              ( (Ast.Break)::_1 )
# 7428 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | CONTINUE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
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
# 7455 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 240 "parser.mly"
                                              ( (Ast.Continue)::_1 )
# 7462 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | FALLTHROUGH ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
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
# 7487 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 242 "parser.mly"
                                              ( failwith "fallthrough statements are not supported in GoLite" )
# 7494 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | FOR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | PRINT _v ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | PRINTLN _v ->
            _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState261 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | APPEND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState262 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | SEMICOLON _ ->
                _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState262
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState262)
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | LCURLY ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState261)
    | GO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState258
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState258)
    | GOTO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
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
# 7736 "parser.ml"
                )) = _v in
                let (((_menhir_stack, (_1 : (Ast.statement list))), _), (_3 : (
# 25 "parser.mly"
       (string * int)
# 7741 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Ast.statement list) = 
# 241 "parser.mly"
                                              ( failwith "goto statements are not supported in GoLite" )
# 7747 "parser.ml"
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
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | IF _v ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | LCURLY ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | PRINT _v ->
        _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | PRINTLN _v ->
        _menhir_run189 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | RCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
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
# 7808 "parser.ml"
            )) = _v in
            let _v : (int option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 7813 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN | CONTINUE | DECINTLITERAL _ | ELSE | EOF | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | FUNC | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | PRINTLN _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (int option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 7821 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | RETURN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState181 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState182 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | SEMICOLON _ ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182)
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState181 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | TYPE ->
        _menhir_run159 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | VAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState181
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState181

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
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState296 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState296)
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : ((string * Ast.typeT) list))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 7944 "parser.ml"
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
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.type_decl list))) = _menhir_stack in
        let _v : (Ast.type_decl list) = 
# 84 "parser.mly"
                          ( _2::_1 )
# 7965 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.type_decl)) = _v in
        let _v : (Ast.type_decl list) = 
# 83 "parser.mly"
                          ( [_1] )
# 7975 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.type_decl list) = 
# 79 "parser.mly"
                                        ( [_2] )
# 7987 "parser.ml"
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
# 96 "parser.mly"
                          ( _2 @ _1 )
# 8004 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.variable_decl list)) = _v in
        let _v : (Ast.variable_decl list) = 
# 95 "parser.mly"
                          ( _1 )
# 8014 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.variable_decl list) = 
# 91 "parser.mly"
                                      ( _2 )
# 8026 "parser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.typeT) -> (
# 5 "parser.mly"
      (int)
# 8035 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
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
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState55 in
        let _v : (Ast.exp list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 8104 "parser.ml"
         in
        _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55

and _menhir_goto_primary_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.primary_exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState181 | MenhirState261 | MenhirState272 | MenhirState270 | MenhirState264 | MenhirState262 | MenhirState258 | MenhirState248 | MenhirState245 | MenhirState242 | MenhirState239 | MenhirState236 | MenhirState233 | MenhirState230 | MenhirState227 | MenhirState222 | MenhirState219 | MenhirState216 | MenhirState211 | MenhirState207 | MenhirState199 | MenhirState200 | MenhirState195 | MenhirState190 | MenhirState182 | MenhirState154 | MenhirState149 | MenhirState27 | MenhirState37 | MenhirState38 | MenhirState40 | MenhirState41 | MenhirState42 | MenhirState124 | MenhirState120 | MenhirState55 | MenhirState56 | MenhirState57 | MenhirState105 | MenhirState103 | MenhirState100 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState88 | MenhirState86 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState66 | MenhirState62 | MenhirState60 | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIV _ | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 178 "parser.mly"
                                            ( Ast.PrimExp _1 )
# 8131 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
        | DOT ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 5 "parser.mly"
      (int)
# 8236 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 8241 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 8245 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 228 "parser.mly"
                                            ( Ast.CapExp (_3, _2) )
# 8250 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 5 "parser.mly"
      (int)
# 8275 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 8280 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 8284 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 227 "parser.mly"
                                            ( Ast.LenExp (_3, _2) )
# 8289 "parser.ml"
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

and _menhir_run180 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.statement list) = 
# 233 "parser.mly"
                                              ( [] )
# 8309 "parser.ml"
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
# 128 "parser.mly"
                                                ( Ast.StructType _3 )
# 8334 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_reduce116 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
       (string * int)
# 8345 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8351 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Ast.typeT) = 
# 121 "parser.mly"
                      ( Ast.DefinedType ((fst _1), None) )
# 8356 "parser.ml"
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
# 8370 "parser.ml"
        ))), _, (_2 : (
# 7 "parser.mly"
      (int)
# 8374 "parser.ml"
        ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 123 "parser.mly"
                          ( Ast.SliceType _3 )
# 8379 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState181 | MenhirState272 | MenhirState270 | MenhirState261 | MenhirState264 | MenhirState262 | MenhirState258 | MenhirState248 | MenhirState245 | MenhirState242 | MenhirState239 | MenhirState236 | MenhirState233 | MenhirState230 | MenhirState227 | MenhirState222 | MenhirState219 | MenhirState216 | MenhirState211 | MenhirState207 | MenhirState200 | MenhirState199 | MenhirState195 | MenhirState190 | MenhirState182 | MenhirState154 | MenhirState149 | MenhirState27 | MenhirState37 | MenhirState38 | MenhirState41 | MenhirState42 | MenhirState44 | MenhirState50 | MenhirState124 | MenhirState120 | MenhirState55 | MenhirState56 | MenhirState57 | MenhirState105 | MenhirState103 | MenhirState100 | MenhirState98 | MenhirState96 | MenhirState94 | MenhirState92 | MenhirState90 | MenhirState88 | MenhirState86 | MenhirState84 | MenhirState82 | MenhirState80 | MenhirState78 | MenhirState76 | MenhirState74 | MenhirState72 | MenhirState70 | MenhirState68 | MenhirState66 | MenhirState62 | MenhirState60 | MenhirState58 | MenhirState53 ->
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
    | MenhirState110 ->
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
# 8407 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_3 : (
# 5 "parser.mly"
      (int)
# 8412 "parser.ml"
            ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 191 "parser.mly"
                                            ( failwith "Type assertions are not supported in GoLite" )
# 8418 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState40 ->
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
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 7 "parser.mly"
      (int)
# 8446 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (
# 7 "parser.mly"
      (int)
# 8450 "parser.ml"
        ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 122 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 8455 "parser.ml"
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
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState142
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState142
            | IDENTIFIER _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState142 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState142
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState142
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), (_2 : (
# 7 "parser.mly"
      (int)
# 8507 "parser.ml"
        ))), _, (_3 : (Ast.typeT))), (_4 : (
# 7 "parser.mly"
      (int)
# 8511 "parser.ml"
        ))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 125 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 8517 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 8526 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 124 "parser.mly"
                      ( Ast.PointerType _2 )
# 8531 "parser.ml"
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
# 8546 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), _, (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : ((string * Ast.typeT) list) = 
# 136 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 8556 "parser.ml"
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState154
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 8643 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 99 "parser.mly"
                                                ( List.map (fun iden -> Ast.VarDeclTypeNoInit (_2, iden, _3)) _1 )
# 8649 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState162 ->
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
# 8670 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8675 "parser.ml"
            ))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 8679 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 87 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 8684 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState161 ->
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
# 8705 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8710 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 88 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1), (snd _1)) )
# 8715 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 8731 "parser.ml"
         in
        _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState293 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 117 "parser.mly"
                                                ( [] )
# 8741 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | MenhirState297 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : ((string * Ast.typeT) list))), _, (_3 : (string list))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.typeT) list) = 
# 118 "parser.mly"
                                                ( (List.map (fun iden -> (iden, _4)) _3) @ _1 )
# 8752 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run145 : _menhir_env -> 'ttv_tail * _menhir_state * (string list) -> _menhir_state -> 'ttv_return =
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
# 8776 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 144 "parser.mly"
                                  ( (fst _3)::_1 )
# 8783 "parser.ml"
         in
        _menhir_goto_ident_list _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 43 "parser.mly"
       (string)
# 8796 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 43 "parser.mly"
       (string)
# 8804 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 188 "parser.mly"
                                            ( Ast.StrLit (_1) )
# 8809 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (string)
# 8816 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (string)
# 8824 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 187 "parser.mly"
                                            ( Ast.RuneLit (_1) )
# 8829 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (int)
# 8836 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 8907 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "parser.mly"
       (string)
# 8978 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 8986 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 185 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Oct) )
# 8991 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 8998 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
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
# 9069 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
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
# 5 "parser.mly"
      (int)
# 9140 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
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
# 31 "parser.mly"
       (int)
# 9211 "parser.ml"
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
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | OCTINTLITERAL _v ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 9280 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR _ ->
        _menhir_reduce116 _menhir_env (Obj.magic _menhir_stack)
    | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COLON | COMMA | DIV _ | DIVEQ _ | DOT | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 9294 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 181 "parser.mly"
                                            ( Ast.Var ((fst _1), (snd _1)) )
# 9299 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "parser.mly"
       (string)
# 9312 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 39 "parser.mly"
       (string)
# 9320 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 186 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Hex) )
# 9325 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "parser.mly"
       (float)
# 9332 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 41 "parser.mly"
       (float)
# 9340 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 182 "parser.mly"
                                            ( Ast.FloatLit (_1) )
# 9345 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "parser.mly"
       (string)
# 9352 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 36 "parser.mly"
       (string)
# 9360 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 183 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Dec) )
# 9365 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "parser.mly"
       (int)
# 9372 "parser.ml"
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
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run56 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 9441 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9512 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "parser.mly"
       (string)
# 9583 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 9591 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 184 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Bin) )
# 9596 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9603 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
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

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "parser.mly"
       (int)
# 9674 "parser.ml"
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
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState53
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run161 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 9743 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState161 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState162
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162)
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | IDENTIFIER _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState161
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161

and _menhir_goto_option_typeT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LCURLY ->
        _menhir_run180 _menhir_env (Obj.magic _menhir_stack) MenhirState179
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179

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
# 9837 "parser.ml"
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
# 9855 "parser.ml"
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
# 9867 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9874 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENTIFIER _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState24
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
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26
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
# 9956 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | RSQUARE _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState27 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30
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
# 129 "parser.mly"
                      ( Ast.IntType )
# 10065 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 126 "parser.mly"
                      ( failwith "Interface types are not suppoted in GoLite" )
# 10077 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 10084 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce116 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 130 "parser.mly"
                      ( Ast.FloatType )
# 10099 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 127 "parser.mly"
                      ( failwith "Channel types are not suppoted in GoLite" )
# 10111 "parser.ml"
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
            | APPEND _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState149
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149)
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | COMMA ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16
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
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | COMMA ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState21
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
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | COMMA ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState293 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState293
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState293)
    | MenhirState296 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | COMMA ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState297 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState297
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState297)
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

and _menhir_run159 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run161 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | LPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run161 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState297 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState296 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState293 ->
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
    | MenhirState273 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState272 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState270 ->
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
    | MenhirState265 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState264 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState262 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState259 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState258 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState252 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState249 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState248 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState246 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState243 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState240 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState239 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState237 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState236 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState234 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState233 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState231 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState230 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState227 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState223 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState222 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState219 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState217 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState216 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState212 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState207 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState206 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState203 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState200 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState199 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState196 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState195 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState191 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState181 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState162 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState161 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState149 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState142 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState125 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
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
    | MenhirState73 ->
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
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
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
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
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
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState177
        | LCURLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState177 in
            let _v : (Ast.typeT option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 10981 "parser.ml"
             in
            _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 10998 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 25 "parser.mly"
       (string * int)
# 11006 "parser.ml"
    )) = _v in
    let _v : (string list) = 
# 143 "parser.mly"
                                  ( [(fst _1)] )
# 11011 "parser.ml"
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
# 59 "parser.mly"
       (Ast.program)
# 11031 "parser.ml"
        ) = 
# 63 "parser.mly"
                                                              ( Ast.Program (_1, _3) )
# 11035 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 59 "parser.mly"
       (Ast.program)
# 11042 "parser.ml"
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
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
                | RPAR _ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState175 in
                    let _v : ((string * Ast.typeT) list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 11072 "parser.ml"
                     in
                    _menhir_goto_option_func_params_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175)
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
        _menhir_run159 _menhir_env (Obj.magic _menhir_stack) MenhirState8
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
# 73 "parser.mly"
                        ( [] )
# 11108 "parser.ml"
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
# 59 "parser.mly"
       (Ast.program)
# 11127 "parser.ml"
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
# 11159 "parser.ml"
                )) = _v in
                let (_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 11164 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 66 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 11170 "parser.ml"
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
# 70 "parser.mly"
                        ( failwith "Packages are not supported in GoLite.")
# 11185 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | FUNC | TYPE | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 69 "parser.mly"
                        ( () )
# 11193 "parser.ml"
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
  


# 11221 "parser.ml"
