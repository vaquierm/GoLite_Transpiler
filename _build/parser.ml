
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
  | MenhirState283
  | MenhirState282
  | MenhirState279
  | MenhirState265
  | MenhirState263
  | MenhirState261
  | MenhirState259
  | MenhirState258
  | MenhirState256
  | MenhirState255
  | MenhirState253
  | MenhirState251
  | MenhirState250
  | MenhirState248
  | MenhirState247
  | MenhirState245
  | MenhirState244
  | MenhirState238
  | MenhirState235
  | MenhirState234
  | MenhirState232
  | MenhirState231
  | MenhirState229
  | MenhirState228
  | MenhirState226
  | MenhirState225
  | MenhirState223
  | MenhirState222
  | MenhirState220
  | MenhirState219
  | MenhirState217
  | MenhirState216
  | MenhirState214
  | MenhirState213
  | MenhirState209
  | MenhirState208
  | MenhirState206
  | MenhirState205
  | MenhirState203
  | MenhirState202
  | MenhirState198
  | MenhirState197
  | MenhirState195
  | MenhirState194
  | MenhirState193
  | MenhirState190
  | MenhirState188
  | MenhirState187
  | MenhirState186
  | MenhirState183
  | MenhirState182
  | MenhirState177
  | MenhirState174
  | MenhirState173
  | MenhirState171
  | MenhirState169
  | MenhirState167
  | MenhirState159
  | MenhirState154
  | MenhirState153
  | MenhirState152
  | MenhirState151
  | MenhirState146
  | MenhirState141
  | MenhirState134
  | MenhirState131
  | MenhirState130
  | MenhirState123
  | MenhirState117
  | MenhirState116
  | MenhirState114
  | MenhirState113
  | MenhirState112
  | MenhirState102
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
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState67
  | MenhirState65
  | MenhirState64
  | MenhirState63
  | MenhirState61
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
   

# 498 "parser.ml"

let rec _menhir_run112 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp list) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState112
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112

and _menhir_goto_for_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (Ast.statement)) = _v in
    let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
    let _v : (Ast.statement list) = 
# 228 "parser.mly"
                                              (
    let for_stm = match _2 with
    | Ast.ForStm (None, cond, None, block, line) ->
      Ast.WhileStm (cond, block, line)
    | _ -> _2
    in
    for_stm::_1
  )
# 582 "parser.ml"
     in
    _menhir_goto_statement_list _menhir_env _menhir_stack _v

and _menhir_goto_if_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_6 : (Ast.statement)) = _v in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 596 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 267 "parser.mly"
                                                   (
    let inner_else = Ast.StmsBlock ([_6])
    in
    let inner = Ast.IfStm (_3, _4, Some inner_else, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 608 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_5 : (Ast.statement)) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 618 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 279 "parser.mly"
                                  (
    let b = Ast.StmsBlock ([_5])
    in
    Ast.IfStm (_2, _3, Some b, _1) 
  )
# 628 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.statement)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 227 "parser.mly"
                                              ( _2::_1 )
# 639 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.exp option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState174 ->
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
# 661 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp option))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 221 "parser.mly"
                                              ( (Ast.Return (_3, _4))::_1 )
# 668 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState248 ->
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | PRINT _v ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | SEMICOLON _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState250 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LCURLY ->
                    _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState251
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState251)
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState250 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState250
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState256 ->
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
            | PRINT _v ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState258 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState258
            | SEMICOLON _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_s = MenhirState258 in
                let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LCURLY ->
                    _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState259
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState259)
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState247 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState263
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState263)
    | _ ->
        _menhir_fail ()

and _menhir_reduce78 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
    let _v : (Ast.statement) = 
# 238 "parser.mly"
                                     ( Ast.ExpStm (_1, 1) )
# 881 "parser.ml"
     in
    _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run194 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 888 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState194
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194

and _menhir_run197 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 959 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState197
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState197
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState197
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState197
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState197
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197

and _menhir_run200 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 1030 "parser.ml"
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
# 1044 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 1049 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 239 "parser.mly"
                                              ( Ast.ExpStm (Ast.Binop (_1, Ast.BPlus, _1, _3), _3) )
# 1054 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run202 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1067 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState202
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202

and _menhir_run205 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1138 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState205
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205

and _menhir_run208 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1209 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState208
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208

and _menhir_run211 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 1280 "parser.ml"
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
# 1294 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 1299 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 240 "parser.mly"
                                              ( Ast.ExpStm (Ast.Binop (_1, Ast.BMinus, _1, _3), _3) )
# 1304 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run213 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1317 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
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
# 14 "parser.mly"
      (int)
# 1388 "parser.ml"
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
# 1459 "parser.ml"
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
# 1530 "parser.ml"
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
# 14 "parser.mly"
      (int)
# 1601 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState225 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState225
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState225

and _menhir_run228 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1672 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState228 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState228
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState228

and _menhir_run231 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1743 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState231 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState231
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState231

and _menhir_run234 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 1814 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState234 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState234
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState234

and _menhir_goto_simple_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187)
    | MenhirState250 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState253
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState253)
    | MenhirState247 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState256 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | SEMICOLON _ ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState256
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState256)
    | MenhirState258 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LCURLY ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState261
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState261)
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.statement))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 226 "parser.mly"
                                              ( _2::_1 )
# 2047 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_reduce55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (x : (Ast.exp))) = _menhir_stack in
    let _v : (Ast.exp option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2059 "parser.ml"
     in
    _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v

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
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | RPAR _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.exp list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 2080 "parser.ml"
             in
            _menhir_goto_option_exp_list_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 2103 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 2108 "parser.ml"
            ))), _, (_3 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 101 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, _4)) _1 _3 )
# 2113 "parser.ml"
             in
            _menhir_goto_var_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_5 : (
# 9 "parser.mly"
      (int)
# 2136 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))), (_3 : (
# 19 "parser.mly"
      (int)
# 2141 "parser.ml"
            ))), _, (_4 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 100 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclTypeInit (_2, iden, exp, _5)) _1 _4 )
# 2146 "parser.ml"
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

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2161 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState63
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
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

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2232 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
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

and _menhir_run83 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2303 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
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

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2374 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState65
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
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

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2445 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
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

and _menhir_run85 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2516 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
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

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2587 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
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

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2658 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
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

and _menhir_run89 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2729 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
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

and _menhir_run91 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2800 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
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

and _menhir_run93 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2871 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState93
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
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

and _menhir_run95 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2942 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
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

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3013 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
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

and _menhir_run97 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 3084 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97

and _menhir_run99 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 3155 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3226 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
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

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3297 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
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

and _menhir_run79 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3368 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState79
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
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

and _menhir_run81 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 3439 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
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

and _menhir_goto_option_SEMICOLON_ : _menhir_env -> 'ttv_tail -> (int option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_4 : (int option)) = _v in
    let (((_menhir_stack, _menhir_s), (_2 : (Ast.statement list))), _) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (Ast.block) = 
# 213 "parser.mly"
                                              ( Ast.StmsBlock _2 )
# 3518 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState188 ->
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
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
            | LCURLY ->
                _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState190
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190)
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3545 "parser.ml"
            ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 286 "parser.mly"
                                 (
    let inner = Ast.IfStm (_3, _4, None, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3554 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3569 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 274 "parser.mly"
                                           (
    let inner = Ast.IfStm (_3, _4, Some _6, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3579 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState193 ->
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
                _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState238 _v
            | LCURLY ->
                _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState238
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState238)
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3605 "parser.ml"
            ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 285 "parser.mly"
                ( Ast.IfStm (_2, _3, None, _1) )
# 3610 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3625 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))), _, (_5 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 284 "parser.mly"
                          ( Ast.IfStm (_2, _3, Some _5, _1) )
# 3631 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState251 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3640 "parser.ml"
        ))), _, (_2 : (
# 9 "parser.mly"
      (int)
# 3644 "parser.ml"
        ))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3648 "parser.ml"
        ))), _, (_5 : (
# 9 "parser.mly"
      (int)
# 3652 "parser.ml"
        ))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 305 "parser.mly"
                                                (
    Ast.ForStm (None, _3, None, _6, _1)
  )
# 3659 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState253 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3668 "parser.ml"
        ))), _, (_2 : (
# 9 "parser.mly"
      (int)
# 3672 "parser.ml"
        ))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3676 "parser.ml"
        ))), _, (_5 : (Ast.statement))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 299 "parser.mly"
                                                       (
    Ast.ForStm (None, _3, Some _5, _6, _1)
  )
# 3683 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState259 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3692 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3696 "parser.ml"
        ))), _, (_5 : (
# 9 "parser.mly"
      (int)
# 3700 "parser.ml"
        ))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 302 "parser.mly"
                                                       (
    Ast.ForStm (Some _2, _3, None, _6, _1)
  )
# 3707 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState261 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3716 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp option))), (_4 : (
# 9 "parser.mly"
      (int)
# 3720 "parser.ml"
        ))), _, (_5 : (Ast.statement))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 296 "parser.mly"
                                                              (
    Ast.ForStm (Some _2, _3, Some _5, _6, _1)
  )
# 3727 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState263 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3736 "parser.ml"
        ))), _, (_2 : (Ast.exp option))), _, (_3 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 293 "parser.mly"
                  (
    Ast.WhileStm (_2, _3, _1)
  )
# 3743 "parser.ml"
         in
        _menhir_goto_for_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 217 "parser.mly"
                                              ( (Ast.BlockStm _2)::_1  )
# 3753 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((((_menhir_stack, _menhir_s), (_2 : (
# 25 "parser.mly"
       (string * int)
# 3762 "parser.ml"
        ))), (_3 : (
# 5 "parser.mly"
      (int)
# 3766 "parser.ml"
        ))), _, (_4 : ((string * Ast.typeT) list option))), (_5 : (
# 5 "parser.mly"
      (int)
# 3770 "parser.ml"
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
# 3786 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.func_decl)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 76 "parser.mly"
                              ( (Ast.TopFuncDecl _2) :: _1 )
# 3795 "parser.ml"
         in
        _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run186 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
      (int)
# 3804 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | APPEND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | PRINT _v ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState186 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState186
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState186

and _menhir_reduce54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.exp option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 3879 "parser.ml"
     in
    _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run181 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "parser.mly"
       (int)
# 3886 "parser.ml"
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 219 "parser.mly"
                                              ( (List.map (fun d -> Ast.TypeDeclStm d) _2) @ _1 )
# 3977 "parser.ml"
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
# 3988 "parser.ml"
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
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | RPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState159 in
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
# 4017 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 4022 "parser.ml"
            ))), _, (_3 : (Ast.type_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 4026 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.type_decl list) = 
# 80 "parser.mly"
                                        ( _3 )
# 4032 "parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 218 "parser.mly"
                                              ( (List.map (fun d -> Ast.VarDeclStm d) _2) @ _1 )
# 4057 "parser.ml"
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
# 4068 "parser.ml"
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
# 4097 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 4102 "parser.ml"
            ))), _, (_3 : (Ast.variable_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 4106 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.variable_decl list) = 
# 92 "parser.mly"
                                      ( _3 )
# 4112 "parser.ml"
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
# 4140 "parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.typeT))), (_2 : (
# 5 "parser.mly"
      (int)
# 4145 "parser.ml"
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
# 4165 "parser.ml"
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
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState61 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 7 "parser.mly"
      (int)
# 4230 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 4235 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 190 "parser.mly"
                                            ( Ast.IndexExp (_1, _3, _2) )
# 4240 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61)
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
        | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4261 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 160 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 4266 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4279 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 154 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 4284 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4293 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 155 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 4298 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4329 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 152 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 4334 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70)
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4367 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 162 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 4372 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72)
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4393 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 161 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 4398 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4419 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 158 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 4424 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
    | MenhirState77 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4445 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 157 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 4450 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
    | MenhirState79 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4471 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 159 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 4476 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4497 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 156 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 4502 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4541 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 173 "parser.mly"
                                            ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 4546 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 4581 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 153 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 4586 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4625 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 174 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 4630 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4669 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 176 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 4674 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4713 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 175 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 4718 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4757 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 177 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 4762 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4801 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 172 "parser.mly"
                                            ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 4806 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 4859 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 164 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 4864 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | APPEND _ | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIVEQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSHIFTEQ _ | LSQUARE _ | MAP | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | OCTINTLITERAL _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 4915 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 163 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 4920 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100)
    | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4933 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 170 "parser.mly"
                                            ( Ast.Unary (Ast.Ref, _2, _1) )
# 4938 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4947 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 168 "parser.mly"
                                            ( Ast.Unary (Ast.UBinNOT, _2, _1) )
# 4952 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "parser.mly"
      (int)
# 4961 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 167 "parser.mly"
                                            ( Ast.Unary (Ast.BoolNOT, _2, _1) )
# 4966 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp list) = 
# 148 "parser.mly"
                                  ( _3::_1 )
# 5019 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
    | MenhirState146 | MenhirState141 | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp list) = 
# 147 "parser.mly"
                                  ( [_1] )
# 5075 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState117 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_6 : (
# 5 "parser.mly"
      (int)
# 5131 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 5136 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5140 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))), _, (_5 : (Ast.exp))) = _menhir_stack in
            let _4 = () in
            let _v : (Ast.primary_exp) = 
# 209 "parser.mly"
                                            ( Ast.AppendExp (_3, _5, _2) )
# 5146 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState123 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 5 "parser.mly"
      (int)
# 5204 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 5 "parser.mly"
      (int)
# 5209 "parser.ml"
            ))), _, (_2 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 151 "parser.mly"
                                            ( _2 )
# 5214 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5229 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 166 "parser.mly"
                                            ( Ast.Unary (Ast.UMinus, _2, _1) )
# 5234 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5243 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 169 "parser.mly"
                                            ( Ast.Unary (Ast.DeRef, _2, _1) )
# 5248 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 5257 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 165 "parser.mly"
                                            ( _2 )
# 5262 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 21 "parser.mly"
      (int)
# 5271 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 171 "parser.mly"
                                            ( failwith ("Line: " ^ (string_of_int _1) ^ " Go lite does not support the type <-") )
# 5276 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState130 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | IDENTIFIER _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState131
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130)
    | MenhirState256 | MenhirState248 | MenhirState174 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState177 _v
        | SEMICOLON _ ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState177)
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState183 in
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
# 5463 "parser.ml"
                )) = _v in
                let ((((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 5468 "parser.ml"
                ))), (_2 : (
# 5 "parser.mly"
      (int)
# 5472 "parser.ml"
                ))), _, (_3 : (Ast.exp))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 5476 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.statement) = 
# 264 "parser.mly"
                                              ( Ast.Print (_3, _5) )
# 5481 "parser.ml"
                 in
                _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183)
    | MenhirState187 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | LCURLY ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState188
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188)
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINANDEQ _v ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINANDNOTEQ _v ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINOREQ _v ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BINXOREQ _v ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | DIVEQ _v ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | LCURLY ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState193
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | LSHIFTEQ _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MINUSEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MINUSMINUS _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MODEQ _v ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | MULTEQ _v ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | PLUSEQ _v ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | PLUSPLUS _v ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | RSHIFTEQ _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | SHORTASSIGN _v ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState193 _v
        | APPEND _ | BININTLITERAL _ | BOOLNOT _ | CAP _ | CHAN | DECINTLITERAL _ | FLOATLITERAL _ | FLOATTYPE | HEXINTLITERAL _ | IDENTIFIER _ | INTERFACE | INTTYPE | LEN _ | LPAR _ | LSQUARE _ | MAP | OCTINTLITERAL _ | RECEIVE _ | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT ->
            _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193)
    | MenhirState194 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState195 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5677 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 5682 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 253 "parser.mly"
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
# 5697 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195)
    | MenhirState197 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState198 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5755 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5760 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 250 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Rshift, _3, _4), _4) )
# 5765 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState203 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5823 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5828 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 242 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BPlus, _3, _4), _4) )
# 5833 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203)
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState206 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5891 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5896 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 244 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mult, _3, _4), _4) )
# 5901 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206)
    | MenhirState208 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState209 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState209 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5959 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5964 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 252 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mod, _3, _4), _4) )
# 5969 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState209)
    | MenhirState213 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState214 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6027 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6032 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 243 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BMinus, _3, _4), _4) )
# 6037 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState214)
    | MenhirState216 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState217 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6095 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6100 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 251 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Lshift, _3, _4), _4) )
# 6105 "parser.ml"
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
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState220 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6163 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6168 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 245 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Div, _3, _4), _4) )
# 6173 "parser.ml"
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
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState223 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState223 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6231 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6236 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 248 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinXOR, _3, _4), _4) )
# 6241 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState223)
    | MenhirState225 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState226 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6299 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6304 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 247 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinOR, _3, _4), _4) )
# 6309 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState226)
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState229 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6367 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6372 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 249 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinANDNOT, _3, _4), _4) )
# 6377 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229)
    | MenhirState231 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState232 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState232 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6435 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 6440 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 246 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinAND, _3, _4), _4) )
# 6445 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState232)
    | MenhirState234 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState235 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6503 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 6508 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 241 "parser.mly"
                                              ( Ast.AssignStm (_1, _3, _4) )
# 6513 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235)
    | MenhirState244 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState245 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 6571 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 220 "parser.mly"
                                              ( failwith "go statements are not supported in GoLite" )
# 6578 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245)
    | MenhirState173 | MenhirState258 | MenhirState250 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINANDEQ _v ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINANDNOTEQ _v ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINOREQ _v ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BINXOREQ _v ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | DIVEQ _v ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | LSHIFTEQ _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | MINUSEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | MINUSMINUS _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | MODEQ _v ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | MULTEQ _v ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | PLUSEQ _v ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | PLUSPLUS _v ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | RSHIFTEQ _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | SHORTASSIGN _v ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState255 _v
        | APPEND _ | BININTLITERAL _ | BOOLNOT _ | BREAK | CAP _ | CHAN | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | OCTINTLITERAL _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState255)
    | MenhirState247 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINAND _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINANDEQ _v ->
            _menhir_run231 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINANDNOT _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINANDNOTEQ _v ->
            _menhir_run228 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINOR _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINOREQ _v ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINXOR _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BINXOREQ _v ->
            _menhir_run222 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BOOLAND _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | BOOLOR _v ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | DIV _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | DIVEQ _v ->
            _menhir_run219 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | EQ _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | GEQ _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | GT _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | LEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | LSHIFT _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | LSHIFTEQ _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | LT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | MINUS _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | MINUSEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | MINUSMINUS _v ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | MOD _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | MODEQ _v ->
            _menhir_run208 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | MULT _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | MULTEQ _v ->
            _menhir_run205 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | NEQ _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | PLUS _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | PLUSEQ _v ->
            _menhir_run202 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | PLUSPLUS _v ->
            _menhir_run200 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | RSHIFT _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | RSHIFTEQ _v ->
            _menhir_run197 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | SHORTASSIGN _v ->
            _menhir_run194 _menhir_env (Obj.magic _menhir_stack) MenhirState265 _v
        | APPEND _ | BININTLITERAL _ | BOOLNOT _ | CAP _ | CHAN | DECINTLITERAL _ | FLOATLITERAL _ | FLOATTYPE | HEXINTLITERAL _ | IDENTIFIER _ | INTERFACE | INTTYPE | LEN _ | LPAR _ | LSQUARE _ | MAP | OCTINTLITERAL _ | RECEIVE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | STRINGLITERAL _ | STRINGTYPE | STRUCT ->
            _menhir_reduce78 _menhir_env (Obj.magic _menhir_stack)
        | LCURLY ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState265)
    | _ ->
        _menhir_fail ()

and _menhir_run60 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.primary_exp) -> (
# 7 "parser.mly"
      (int)
# 6751 "parser.ml"
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
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run101 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.primary_exp) -> 'ttv_return =
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
# 6831 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.primary_exp) = 
# 189 "parser.mly"
                                            ( Ast.SelectExp (_1, (fst _3), (snd _3)) )
# 6838 "parser.ml"
         in
        _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
    | LPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102)
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
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | BINAND _v ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | BINXOR _v ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | BOOLNOT _v ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | BREAK ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
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
# 6911 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 222 "parser.mly"
                                              ( (Ast.Break)::_1 )
# 6918 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | CAP _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | CONTINUE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
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
# 6945 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 223 "parser.mly"
                                              ( (Ast.Continue)::_1 )
# 6952 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | FALLTHROUGH ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
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
# 6977 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 225 "parser.mly"
                                              ( failwith "fallthrough statements are not supported in GoLite" )
# 6984 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | FOR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | PRINT _v ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState247 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
            | SEMICOLON _ ->
                _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState248
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState248)
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | LCURLY ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState247
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247)
    | GO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState244
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _v
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState244)
    | GOTO ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
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
# 7224 "parser.ml"
                )) = _v in
                let (((_menhir_stack, (_1 : (Ast.statement list))), _), (_3 : (
# 25 "parser.mly"
       (string * int)
# 7229 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Ast.statement list) = 
# 224 "parser.mly"
                                              ( failwith "goto statements are not supported in GoLite" )
# 7235 "parser.ml"
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
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | IF _v ->
        _menhir_run186 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | LCURLY ->
        _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | LEN _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | LPAR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | MINUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | MULT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | OCTINTLITERAL _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | PLUS _v ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | PRINT _v ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | RCURLY ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
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
# 7294 "parser.ml"
            )) = _v in
            let _v : (int option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 7299 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | APPEND _ | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CAP _ | CHAN | CONTINUE | DECINTLITERAL _ | ELSE | EOF | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | FUNC | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (int option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 7307 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | RECEIVE _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | RETURN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState173 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | APPEND _v ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINAND _v ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINXOR _v ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BOOLNOT _v ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | CAP _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | LEN _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | LPAR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | MINUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MULT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | OCTINTLITERAL _v ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | PLUS _v ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | RECEIVE _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | SEMICOLON _ ->
            _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174)
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState173 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | TYPE ->
        _menhir_run151 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | VAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState173
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173

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
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState282 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282)
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : ((string * Ast.typeT) list))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 7430 "parser.ml"
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
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.type_decl list))) = _menhir_stack in
        let _v : (Ast.type_decl list) = 
# 84 "parser.mly"
                          ( _2::_1 )
# 7451 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState152 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.type_decl)) = _v in
        let _v : (Ast.type_decl list) = 
# 83 "parser.mly"
                          ( [_1] )
# 7461 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.type_decl list) = 
# 79 "parser.mly"
                                        ( [_2] )
# 7473 "parser.ml"
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
# 7490 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.variable_decl list)) = _v in
        let _v : (Ast.variable_decl list) = 
# 95 "parser.mly"
                          ( _1 )
# 7500 "parser.ml"
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
# 7512 "parser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run55 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.typeT) -> (
# 5 "parser.mly"
      (int)
# 7521 "parser.ml"
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
# 7590 "parser.ml"
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
    | MenhirState173 | MenhirState247 | MenhirState258 | MenhirState256 | MenhirState250 | MenhirState248 | MenhirState244 | MenhirState234 | MenhirState231 | MenhirState228 | MenhirState225 | MenhirState222 | MenhirState219 | MenhirState216 | MenhirState213 | MenhirState208 | MenhirState205 | MenhirState202 | MenhirState197 | MenhirState194 | MenhirState186 | MenhirState187 | MenhirState182 | MenhirState174 | MenhirState146 | MenhirState141 | MenhirState27 | MenhirState37 | MenhirState38 | MenhirState40 | MenhirState41 | MenhirState42 | MenhirState116 | MenhirState112 | MenhirState55 | MenhirState56 | MenhirState57 | MenhirState99 | MenhirState97 | MenhirState95 | MenhirState93 | MenhirState91 | MenhirState89 | MenhirState87 | MenhirState85 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState73 | MenhirState71 | MenhirState69 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState60 | MenhirState58 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DOT ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIV _ | DIVEQ _ | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LPAR _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 178 "parser.mly"
                                            ( Ast.PrimExp _1 )
# 7617 "parser.ml"
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState116
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
        | DOT ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
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
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 5 "parser.mly"
      (int)
# 7722 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 7727 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 7731 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 211 "parser.mly"
                                            ( Ast.CapExp (_3, _2) )
# 7736 "parser.ml"
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
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | LSQUARE _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 5 "parser.mly"
      (int)
# 7761 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 31 "parser.mly"
       (int)
# 7766 "parser.ml"
            ))), (_2 : (
# 5 "parser.mly"
      (int)
# 7770 "parser.ml"
            ))), _, (_3 : (Ast.primary_exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 210 "parser.mly"
                                            ( Ast.LenExp (_3, _2) )
# 7775 "parser.ml"
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

and _menhir_run172 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.statement list) = 
# 216 "parser.mly"
                                              ( [] )
# 7795 "parser.ml"
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
# 7820 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_reduce113 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
       (string * int)
# 7831 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 7837 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Ast.typeT) = 
# 121 "parser.mly"
                      ( Ast.DefinedType ((fst _1), None) )
# 7842 "parser.ml"
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
# 7856 "parser.ml"
        ))), _, (_2 : (
# 7 "parser.mly"
      (int)
# 7860 "parser.ml"
        ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 123 "parser.mly"
                          ( Ast.SliceType _3 )
# 7865 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState173 | MenhirState258 | MenhirState256 | MenhirState247 | MenhirState250 | MenhirState248 | MenhirState244 | MenhirState234 | MenhirState231 | MenhirState228 | MenhirState225 | MenhirState222 | MenhirState219 | MenhirState216 | MenhirState213 | MenhirState208 | MenhirState205 | MenhirState202 | MenhirState197 | MenhirState194 | MenhirState187 | MenhirState186 | MenhirState182 | MenhirState174 | MenhirState146 | MenhirState141 | MenhirState27 | MenhirState37 | MenhirState38 | MenhirState41 | MenhirState42 | MenhirState44 | MenhirState50 | MenhirState116 | MenhirState112 | MenhirState55 | MenhirState56 | MenhirState57 | MenhirState99 | MenhirState97 | MenhirState95 | MenhirState93 | MenhirState91 | MenhirState89 | MenhirState87 | MenhirState85 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState73 | MenhirState71 | MenhirState69 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState60 | MenhirState58 | MenhirState53 ->
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
    | MenhirState102 ->
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
# 7893 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_3 : (
# 5 "parser.mly"
      (int)
# 7898 "parser.ml"
            ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 191 "parser.mly"
                                            ( failwith "Type assertions are not supported in GoLite" )
# 7904 "parser.ml"
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
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 7 "parser.mly"
      (int)
# 7932 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (
# 7 "parser.mly"
      (int)
# 7936 "parser.ml"
        ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 122 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 7941 "parser.ml"
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
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | IDENTIFIER _v ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | MULT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState134
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s), (_2 : (
# 7 "parser.mly"
      (int)
# 7993 "parser.ml"
        ))), _, (_3 : (Ast.typeT))), (_4 : (
# 7 "parser.mly"
      (int)
# 7997 "parser.ml"
        ))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 125 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 8003 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 8012 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 124 "parser.mly"
                      ( Ast.PointerType _2 )
# 8017 "parser.ml"
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
# 8032 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), _, (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : ((string * Ast.typeT) list) = 
# 136 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 8042 "parser.ml"
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState146 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState146
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146)
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_3 : (
# 9 "parser.mly"
      (int)
# 8129 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 99 "parser.mly"
                                                ( List.map (fun iden -> Ast.VarDeclTypeNoInit (_2, iden, _3)) _1 )
# 8135 "parser.ml"
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
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 8156 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8161 "parser.ml"
            ))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 8165 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 87 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 8170 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState153 ->
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
# 8191 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8196 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 88 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1), (snd _1)) )
# 8201 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 8217 "parser.ml"
         in
        _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 117 "parser.mly"
                                                ( [] )
# 8227 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | MenhirState283 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : ((string * Ast.typeT) list))), _, (_3 : (string list))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.typeT) list) = 
# 118 "parser.mly"
                                                ( (List.map (fun iden -> (iden, _4)) _3) @ _1 )
# 8238 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run137 : _menhir_env -> 'ttv_tail * _menhir_state * (string list) -> _menhir_state -> 'ttv_return =
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
# 8262 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 144 "parser.mly"
                                  ( (fst _3)::_1 )
# 8269 "parser.ml"
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
# 8282 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 43 "parser.mly"
       (string)
# 8290 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 188 "parser.mly"
                                            ( Ast.StrLit (_1) )
# 8295 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (string)
# 8302 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (string)
# 8310 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 187 "parser.mly"
                                            ( Ast.RuneLit (_1) )
# 8315 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (int)
# 8322 "parser.ml"
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
# 8393 "parser.ml"
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
# 8464 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 8472 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 185 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Oct) )
# 8477 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 8484 "parser.ml"
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
# 8555 "parser.ml"
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
# 8626 "parser.ml"
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
# 8697 "parser.ml"
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
# 8766 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR _ ->
        _menhir_reduce113 _menhir_env (Obj.magic _menhir_stack)
    | APPEND _ | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BININTLITERAL _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLNOT _ | BOOLOR _ | BREAK | CAP _ | CHAN | COMMA | CONTINUE | DECINTLITERAL _ | DIV _ | DIVEQ _ | DOT | EQ _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FOR _ | GEQ _ | GO | GOTO | GT _ | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LEN _ | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MAP | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | OCTINTLITERAL _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | PRINT _ | RCURLY | RECEIVE _ | RETURN | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | RUNELITERAL _ | RUNETYPE | SEMICOLON _ | SHORTASSIGN _ | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 8780 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 181 "parser.mly"
                                            ( Ast.Var ((fst _1), (snd _1)) )
# 8785 "parser.ml"
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
# 8798 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 39 "parser.mly"
       (string)
# 8806 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 186 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Hex) )
# 8811 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "parser.mly"
       (float)
# 8818 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 41 "parser.mly"
       (float)
# 8826 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 182 "parser.mly"
                                            ( Ast.FloatLit (_1) )
# 8831 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "parser.mly"
       (string)
# 8838 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 36 "parser.mly"
       (string)
# 8846 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 183 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Dec) )
# 8851 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 31 "parser.mly"
       (int)
# 8858 "parser.ml"
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
# 8927 "parser.ml"
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
# 8998 "parser.ml"
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
# 9069 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 9077 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 184 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Bin) )
# 9082 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9089 "parser.ml"
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
# 9160 "parser.ml"
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

and _menhir_run153 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 9229 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState153 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154)
    | CHAN ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | FLOATTYPE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | IDENTIFIER _v ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | INTERFACE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | INTTYPE ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | MULT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153

and _menhir_goto_option_typeT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LCURLY ->
        _menhir_run172 _menhir_env (Obj.magic _menhir_stack) MenhirState171
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171

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
# 9323 "parser.ml"
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
# 9341 "parser.ml"
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
# 9353 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 9360 "parser.ml"
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
# 9442 "parser.ml"
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
# 9551 "parser.ml"
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
# 9563 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 9570 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce113 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 130 "parser.mly"
                      ( Ast.FloatType )
# 9585 "parser.ml"
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
# 9597 "parser.ml"
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
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | BINAND _v ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | BININTLITERAL _v ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | BINXOR _v ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | BOOLNOT _v ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | CAP _v ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | CHAN ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | DECINTLITERAL _v ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | FLOATLITERAL _v ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | FLOATTYPE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | HEXINTLITERAL _v ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | IDENTIFIER _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | INTERFACE ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | INTTYPE ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LEN _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | LPAR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | LSQUARE _v ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | MAP ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | MINUS _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | MULT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | OCTINTLITERAL _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | PLUS _v ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | RECEIVE _v ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | RUNELITERAL _v ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | RUNETYPE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | STRINGLITERAL _v ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | STRINGTYPE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | STRUCT ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141)
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | COMMA ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState16
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
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState21
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
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | COMMA ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState279
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279)
    | MenhirState282 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | COMMA ->
            _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState283
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState283)
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

and _menhir_run151 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
    | LPAR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState151 in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState283 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState282 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState279 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState265 ->
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
    | MenhirState259 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState258 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState256 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState255 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState253 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState251 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState250 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState238 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState235 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState234 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState232 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState231 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState229 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState228 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState226 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState225 ->
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
    | MenhirState214 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState213 ->
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
    | MenhirState206 ->
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
    | MenhirState198 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState197 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState195 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState194 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState193 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState188 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState187 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState186 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState183 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState182 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState177 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState174 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState173 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState154 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState153 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState152 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState151 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState146 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState141 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState131 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState130 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState123 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState102 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
    | MenhirState73 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState72 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
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
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
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
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | FLOATTYPE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | IDENTIFIER _v ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | INTERFACE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | INTTYPE ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | LCURLY ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState169 in
            let _v : (Ast.typeT option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 10443 "parser.ml"
             in
            _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 10460 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 25 "parser.mly"
       (string * int)
# 10468 "parser.ml"
    )) = _v in
    let _v : (string list) = 
# 143 "parser.mly"
                                  ( [(fst _1)] )
# 10473 "parser.ml"
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
# 10493 "parser.ml"
        ) = 
# 63 "parser.mly"
                                                              ( Ast.Program (_1, _3) )
# 10497 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 59 "parser.mly"
       (Ast.program)
# 10504 "parser.ml"
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
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
                | RPAR _ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState167 in
                    let _v : ((string * Ast.typeT) list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 10534 "parser.ml"
                     in
                    _menhir_goto_option_func_params_ _menhir_env _menhir_stack _menhir_s _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167)
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
        _menhir_run151 _menhir_env (Obj.magic _menhir_stack) MenhirState8
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
# 10570 "parser.ml"
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
# 10589 "parser.ml"
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
# 10621 "parser.ml"
                )) = _v in
                let (_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 10626 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 66 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 10632 "parser.ml"
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
# 10647 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | FUNC | TYPE | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 69 "parser.mly"
                        ( () )
# 10655 "parser.ml"
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
  


# 10683 "parser.ml"
