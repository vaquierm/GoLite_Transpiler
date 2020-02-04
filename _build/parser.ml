
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
    | FOR
    | FLOATTYPE
    | FLOATLITERAL of (
# 41 "parser.mly"
       (float)
# 213 "parser.ml"
  )
    | FALLTHROUGH
    | EQ of (
# 23 "parser.mly"
      (int)
# 219 "parser.ml"
  )
    | EOF
    | ELSE
    | DOT
    | DIVEQ of (
# 14 "parser.mly"
      (int)
# 227 "parser.ml"
  )
    | DIV of (
# 13 "parser.mly"
      (int)
# 232 "parser.ml"
  )
    | DEFER
    | DEFAULT
    | DECINTLITERAL of (
# 36 "parser.mly"
       (string)
# 239 "parser.ml"
  )
    | CONTINUE
    | CONS
    | COMMENT of (
# 33 "parser.mly"
       (string)
# 246 "parser.ml"
  )
    | COMMA
    | COLON
    | CHAN
    | CASE
    | CAP of (
# 31 "parser.mly"
       (int)
# 255 "parser.ml"
  )
    | BREAK
    | BOOLTYPE
    | BOOLOR of (
# 17 "parser.mly"
      (int)
# 262 "parser.ml"
  )
    | BOOLNOT of (
# 17 "parser.mly"
      (int)
# 267 "parser.ml"
  )
    | BOOLLITERAL of (
# 40 "parser.mly"
       (bool)
# 272 "parser.ml"
  )
    | BOOLAND of (
# 17 "parser.mly"
      (int)
# 277 "parser.ml"
  )
    | BLOCKCOMMENT of (
# 34 "parser.mly"
       (string)
# 282 "parser.ml"
  )
    | BINXOREQ of (
# 14 "parser.mly"
      (int)
# 287 "parser.ml"
  )
    | BINXOR of (
# 13 "parser.mly"
      (int)
# 292 "parser.ml"
  )
    | BINOREQ of (
# 14 "parser.mly"
      (int)
# 297 "parser.ml"
  )
    | BINOR of (
# 13 "parser.mly"
      (int)
# 302 "parser.ml"
  )
    | BININTLITERAL of (
# 38 "parser.mly"
       (string)
# 307 "parser.ml"
  )
    | BINANDNOTEQ of (
# 14 "parser.mly"
      (int)
# 312 "parser.ml"
  )
    | BINANDNOT of (
# 13 "parser.mly"
      (int)
# 317 "parser.ml"
  )
    | BINANDEQ of (
# 14 "parser.mly"
      (int)
# 322 "parser.ml"
  )
    | BINAND of (
# 13 "parser.mly"
      (int)
# 327 "parser.ml"
  )
    | ASSIGN of (
# 19 "parser.mly"
      (int)
# 332 "parser.ml"
  )
    | APPEND of (
# 31 "parser.mly"
       (int)
# 337 "parser.ml"
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
  | MenhirState246
  | MenhirState245
  | MenhirState242
  | MenhirState239
  | MenhirState227
  | MenhirState226
  | MenhirState220
  | MenhirState217
  | MenhirState216
  | MenhirState214
  | MenhirState213
  | MenhirState211
  | MenhirState210
  | MenhirState208
  | MenhirState207
  | MenhirState205
  | MenhirState204
  | MenhirState202
  | MenhirState201
  | MenhirState199
  | MenhirState198
  | MenhirState196
  | MenhirState195
  | MenhirState191
  | MenhirState190
  | MenhirState188
  | MenhirState187
  | MenhirState185
  | MenhirState184
  | MenhirState180
  | MenhirState179
  | MenhirState176
  | MenhirState175
  | MenhirState174
  | MenhirState171
  | MenhirState169
  | MenhirState168
  | MenhirState167
  | MenhirState163
  | MenhirState160
  | MenhirState159
  | MenhirState157
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
  | MenhirState116
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState98
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
  | MenhirState68
  | MenhirState67
  | MenhirState66
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState57
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
  | MenhirState8

# 1 "parser.mly"
   

# 475 "parser.ml"

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

and _menhir_goto_if_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_6 : (Ast.statement)) = _v in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 547 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 255 "parser.mly"
                                                   (
    let inner_else = Ast.StmsBlock ([_6])
    in
    let inner = Ast.IfStm (_3, _4, Some inner_else, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 559 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_5 : (Ast.statement)) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 569 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 267 "parser.mly"
                                  (
    let b = Ast.StmsBlock ([_5])
    in
    Ast.IfStm (_2, _3, Some b, _1) 
  )
# 579 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.statement)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 224 "parser.mly"
                                              ( _2::_1 )
# 590 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_simple_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.statement) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
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
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.statement))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 223 "parser.mly"
                                              ( _2::_1 )
# 666 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run175 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 19 "parser.mly"
      (int)
# 675 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState175
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175

and _menhir_run178 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 9 "parser.mly"
      (int)
# 740 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_2 : (
# 9 "parser.mly"
      (int)
# 748 "parser.ml"
    )) = _v in
    let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
    let _v : (Ast.statement) = 
# 227 "parser.mly"
                                              ( Ast.ExpStm (_1, _2) )
# 754 "parser.ml"
     in
    _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v

and _menhir_run179 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 761 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState179

and _menhir_run182 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 826 "parser.ml"
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
# 840 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 845 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 228 "parser.mly"
                                              ( Ast.ExpStm (Ast.Binop (_1, Ast.BPlus, _1, _3), _3) )
# 850 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run184 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 863 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState184
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _v
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
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184

and _menhir_run187 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 928 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState187
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState187 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187

and _menhir_run190 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 993 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState190
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState190 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState190

and _menhir_run193 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 15 "parser.mly"
      (int)
# 1058 "parser.ml"
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
# 1072 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 15 "parser.mly"
      (int)
# 1077 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.statement) = 
# 229 "parser.mly"
                                              ( Ast.ExpStm (Ast.Binop (_1, Ast.BMinus, _1, _3), _3) )
# 1082 "parser.ml"
         in
        _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run195 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1095 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState195
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState195 _v
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState195

and _menhir_run198 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1160 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState198 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState198
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState198

and _menhir_run201 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1225 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
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

and _menhir_run204 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1290 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState204

and _menhir_run207 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1355 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState207
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState207 _v
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
# 14 "parser.mly"
      (int)
# 1420 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState210 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState210
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState210

and _menhir_run213 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 14 "parser.mly"
      (int)
# 1485 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState213
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState213 _v
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
# 19 "parser.mly"
      (int)
# 1550 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
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
# 1629 "parser.ml"
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
# 1652 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 1657 "parser.ml"
            ))), _, (_3 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 101 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, _4)) _1 _3 )
# 1662 "parser.ml"
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
# 1685 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))), (_3 : (
# 19 "parser.mly"
      (int)
# 1690 "parser.ml"
            ))), _, (_4 : (Ast.exp list))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 100 "parser.mly"
                                                ( List.map2 (fun iden exp -> Ast.VarDeclTypeInit (_2, iden, exp, _5)) _1 _4 )
# 1695 "parser.ml"
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

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 1710 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 1775 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run79 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 1840 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 1905 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run67 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 1970 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run81 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2035 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run83 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2100 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run69 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2165 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run85 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2230 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2295 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run89 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2360 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run91 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 23 "parser.mly"
      (int)
# 2425 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run63 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2490 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run93 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 2555 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run95 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 2620 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run71 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2685 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2750 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2815 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.exp) -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 2880 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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
# 2956 "parser.ml"
        )) = _v in
        let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp option))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.statement list) = 
# 218 "parser.mly"
                                              ( (Ast.Return (_3, _4))::_1 )
# 2963 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_option_SEMICOLON_ : _menhir_env -> 'ttv_tail -> (int option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_4 : (int option)) = _v in
    let (((_menhir_stack, _menhir_s), (_2 : (Ast.statement list))), _) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : (Ast.block) = 
# 210 "parser.mly"
                                              ( Ast.StmsBlock _2 )
# 2984 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState169 ->
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
                _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v
            | LCURLY ->
                _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState171
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171)
        | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CHAN | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3011 "parser.ml"
            ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 274 "parser.mly"
                                 (
    let inner = Ast.IfStm (_3, _4, None, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3020 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3035 "parser.ml"
        ))), _, (_2 : (Ast.statement))), _, (_3 : (Ast.exp))), _, (_4 : (Ast.block))), _, (_6 : (Ast.block))) = _menhir_stack in
        let _5 = () in
        let _v : (Ast.statement) = 
# 262 "parser.mly"
                                           (
    let inner = Ast.IfStm (_3, _4, Some _6, _1)
    in
    Ast.BlockStm (Ast.StmsBlock [_2; inner])
  )
# 3045 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState174 ->
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
                _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState220 _v
            | LCURLY ->
                _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState220
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220)
        | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CHAN | CONTINUE | DECINTLITERAL _ | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3071 "parser.ml"
            ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 273 "parser.mly"
                ( Ast.IfStm (_2, _3, None, _1) )
# 3076 "parser.ml"
             in
            _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState220 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s, (_1 : (
# 27 "parser.mly"
      (int)
# 3091 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (Ast.block))), _, (_5 : (Ast.block))) = _menhir_stack in
        let _4 = () in
        let _v : (Ast.statement) = 
# 272 "parser.mly"
                          ( Ast.IfStm (_2, _3, Some _5, _1) )
# 3097 "parser.ml"
         in
        _menhir_goto_if_statement _menhir_env _menhir_stack _menhir_s _v
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, (_1 : (Ast.statement list))), _, (_2 : (Ast.block))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 214 "parser.mly"
                                              ( (Ast.BlockStm _2)::_1  )
# 3107 "parser.ml"
         in
        _menhir_goto_statement_list _menhir_env _menhir_stack _v
    | MenhirState157 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((((((_menhir_stack, _menhir_s), (_2 : (
# 25 "parser.mly"
       (string * int)
# 3116 "parser.ml"
        ))), (_3 : (
# 5 "parser.mly"
      (int)
# 3120 "parser.ml"
        ))), _, (_4 : ((string * Ast.typeT) list option))), (_5 : (
# 5 "parser.mly"
      (int)
# 3124 "parser.ml"
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
# 3140 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.func_decl)) = _v in
        let (_menhir_stack, (_1 : (Ast.top_level_decl list))) = _menhir_stack in
        let _v : (Ast.top_level_decl list) = 
# 76 "parser.mly"
                              ( (Ast.TopFuncDecl _2) :: _1 )
# 3149 "parser.ml"
         in
        _menhir_goto_top_level_decls _menhir_env _menhir_stack _v
    | _ ->
        _menhir_fail ()

and _menhir_run167 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 27 "parser.mly"
      (int)
# 3158 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BINAND _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | BININTLITERAL _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | BINXOR _v ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | BOOLNOT _v ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | CHAN ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | DECINTLITERAL _v ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | FLOATLITERAL _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | FLOATTYPE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | HEXINTLITERAL _v ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | IDENTIFIER _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | LPAR _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | LSQUARE _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | MAP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | MINUS _v ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | MULT _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | OCTINTLITERAL _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | PLUS _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | RECEIVE _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | RUNELITERAL _v ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | RUNETYPE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | STRINGLITERAL _v ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v
    | STRINGTYPE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | STRUCT ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167

and _menhir_goto_type_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.type_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 216 "parser.mly"
                                              ( (List.map (fun d -> Ast.TypeDeclStm d) _2) @ _1 )
# 3231 "parser.ml"
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
# 3242 "parser.ml"
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
# 3271 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 3276 "parser.ml"
            ))), _, (_3 : (Ast.type_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 3280 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.type_decl list) = 
# 80 "parser.mly"
                                        ( _3 )
# 3286 "parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145

and _menhir_goto_var_decls : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.variable_decl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.variable_decl list)) = _v in
        let (_menhir_stack, (_1 : (Ast.statement list))) = _menhir_stack in
        let _v : (Ast.statement list) = 
# 215 "parser.mly"
                                              ( (List.map (fun d -> Ast.VarDeclStm d) _2) @ _1 )
# 3311 "parser.ml"
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
# 3322 "parser.ml"
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
# 3351 "parser.ml"
            )) = _v in
            let ((((_menhir_stack, _menhir_s), _, (_2 : (
# 5 "parser.mly"
      (int)
# 3356 "parser.ml"
            ))), _, (_3 : (Ast.variable_decl list))), _, (_4 : (
# 5 "parser.mly"
      (int)
# 3360 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.variable_decl list) = 
# 92 "parser.mly"
                                      ( _3 )
# 3366 "parser.ml"
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
# 3394 "parser.ml"
        )) = _v in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.typeT))), (_2 : (
# 5 "parser.mly"
      (int)
# 3399 "parser.ml"
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
# 3419 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState57 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 7 "parser.mly"
      (int)
# 3484 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_2 : (
# 7 "parser.mly"
      (int)
# 3489 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.primary_exp) = 
# 190 "parser.mly"
                                            ( Ast.IndexExp (_1, _3, _2) )
# 3494 "parser.ml"
             in
            _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3515 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 160 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Rshift, _3, _2) )
# 3520 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3533 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 154 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mult, _3, _2) )
# 3538 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState63 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3547 "parser.ml"
        ))), _, (_3 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 155 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Div, _3, _2) )
# 3552 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState65 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3583 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 152 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BPlus, _3, _2) )
# 3588 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
    | MenhirState67 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3621 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 162 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Mod, _3, _2) )
# 3626 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3647 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 161 "parser.mly"
                                            ( Ast.Binop (_1, Ast.Lshift, _3, _2) )
# 3652 "parser.ml"
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
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3673 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 158 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinXOR, _3, _2) )
# 3678 "parser.ml"
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
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState74 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3699 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 157 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinOR, _3, _2) )
# 3704 "parser.ml"
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
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3725 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 159 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinANDNOT, _3, _2) )
# 3730 "parser.ml"
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
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3751 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 156 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BinAND, _3, _2) )
# 3756 "parser.ml"
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
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 3795 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 173 "parser.mly"
                                            ( Ast.Binop (_1, Ast.NEQ, _3, _2) )
# 3800 "parser.ml"
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
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 13 "parser.mly"
      (int)
# 3835 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 153 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BMinus, _3, _2) )
# 3840 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 3879 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 174 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LT, _3, _2) )
# 3884 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 3923 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 176 "parser.mly"
                                            ( Ast.Binop (_1, Ast.LEQ, _3, _2) )
# 3928 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 3967 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 175 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GT, _3, _2) )
# 3972 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4011 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 177 "parser.mly"
                                            ( Ast.Binop (_1, Ast.GEQ, _3, _2) )
# 4016 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFTEQ _ | LT _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | NEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 23 "parser.mly"
      (int)
# 4055 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 172 "parser.mly"
                                            ( Ast.Binop (_1, Ast.EQ, _3, _2) )
# 4060 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLOR _ | COMMA | DIVEQ _ | LCURLY | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 4113 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 164 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolOR, _3, _2) )
# 4118 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | ASSIGN _ | BINANDEQ _ | BINANDNOTEQ _ | BINOREQ _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIVEQ _ | LCURLY | LSHIFTEQ _ | MINUSEQ _ | MINUSMINUS _ | MODEQ _ | MULTEQ _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 17 "parser.mly"
      (int)
# 4169 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp) = 
# 163 "parser.mly"
                                            ( Ast.Binop (_1, Ast.BoolAND, _3, _2) )
# 4174 "parser.ml"
             in
            _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (_1 : (Ast.exp list))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.exp list) = 
# 149 "parser.mly"
                                  ( _3::_1 )
# 4231 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106)
    | MenhirState132 | MenhirState127 | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | COMMA | RPAR _ | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp list) = 
# 148 "parser.mly"
                                  ( [_1] )
# 4287 "parser.ml"
             in
            _menhir_goto_exp_list _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4300 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 170 "parser.mly"
                                            ( Ast.Unary (Ast.Ref, _2, _1) )
# 4305 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4314 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 168 "parser.mly"
                                            ( Ast.Unary (Ast.UBinNOT, _2, _1) )
# 4319 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 17 "parser.mly"
      (int)
# 4328 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 167 "parser.mly"
                                            ( Ast.Unary (Ast.BoolNOT, _2, _1) )
# 4333 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4342 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 166 "parser.mly"
                                            ( Ast.Unary (Ast.UMinus, _2, _1) )
# 4347 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4356 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 169 "parser.mly"
                                            ( Ast.Unary (Ast.DeRef, _2, _1) )
# 4361 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 4370 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 165 "parser.mly"
                                            ( _2 )
# 4375 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 21 "parser.mly"
      (int)
# 4384 "parser.ml"
        ))), _, (_2 : (Ast.exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 171 "parser.mly"
                                            ( failwith ("Line: " ^ (string_of_int _1) ^ " Go lite does not support the type <-") )
# 4389 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
        | RSQUARE _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState116 in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState163 _v
        | SEMICOLON _ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.exp option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 4523 "parser.ml"
             in
            _menhir_goto_option_exp_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState163)
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | LCURLY ->
            _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169)
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINANDEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINANDNOTEQ _v ->
            _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINOREQ _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BINXOREQ _v ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | DIVEQ _v ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | LCURLY ->
            _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState174
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | LSHIFTEQ _v ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MINUSEQ _v ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MINUSMINUS _v ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MODEQ _v ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | MULTEQ _v ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | PLUSEQ _v ->
            _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | PLUSPLUS _v ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | RSHIFTEQ _v ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | SEMICOLON _v ->
            _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | SHORTASSIGN _v ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174)
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState176 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState176 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4711 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 4716 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 242 "parser.mly"
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
# 4731 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176)
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState180 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4789 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 4794 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 239 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Rshift, _3, _4), _4) )
# 4799 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180)
    | MenhirState184 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState185 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState185 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4857 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 4862 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 231 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BPlus, _3, _4), _4) )
# 4867 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState185)
    | MenhirState187 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState188 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState188 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4925 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 4930 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 233 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mult, _3, _4), _4) )
# 4935 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState188)
    | MenhirState190 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState191 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState191 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 4993 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 4998 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 241 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Mod, _3, _4), _4) )
# 5003 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState196 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState196 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5061 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5066 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 232 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BMinus, _3, _4), _4) )
# 5071 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState196)
    | MenhirState198 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState199 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState199 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5129 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5134 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 240 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Lshift, _3, _4), _4) )
# 5139 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199)
    | MenhirState201 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState202 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState202 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5197 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5202 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 234 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.Div, _3, _4), _4) )
# 5207 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState202)
    | MenhirState204 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState205 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState205 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5265 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5270 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 237 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinXOR, _3, _4), _4) )
# 5275 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState205)
    | MenhirState207 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState208 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5333 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5338 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 236 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinOR, _3, _4), _4) )
# 5343 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208)
    | MenhirState210 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState211 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5401 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5406 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 238 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinANDNOT, _3, _4), _4) )
# 5411 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211)
    | MenhirState213 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState214 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState214 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5469 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 14 "parser.mly"
      (int)
# 5474 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 235 "parser.mly"
                                              ( Ast.AssignStm (_1, Ast.Binop (_1, Ast.BinAND, _3, _4), _4) )
# 5479 "parser.ml"
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
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState217 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5537 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.exp))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 5542 "parser.ml"
            ))), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _v : (Ast.statement) = 
# 230 "parser.mly"
                                              ( Ast.AssignStm (_1, _3, _4) )
# 5547 "parser.ml"
             in
            _menhir_goto_simple_statement _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217)
    | MenhirState226 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _v
        | SEMICOLON _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState227 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_4 : (
# 9 "parser.mly"
      (int)
# 5605 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : (Ast.statement list))), _), _, (_3 : (Ast.exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 217 "parser.mly"
                                              ( failwith "go statements are not supported in GoLite" )
# 5612 "parser.ml"
             in
            _menhir_goto_statement_list _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227)
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN _v ->
            _menhir_run216 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINAND _v ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINANDEQ _v ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINANDNOT _v ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINANDNOTEQ _v ->
            _menhir_run210 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINOR _v ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINOREQ _v ->
            _menhir_run207 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINXOR _v ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BINXOREQ _v ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BOOLAND _v ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | BOOLOR _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | DIV _v ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | DIVEQ _v ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | EQ _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | GEQ _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | GT _v ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | LEQ _v ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | LSHIFT _v ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | LSHIFTEQ _v ->
            _menhir_run198 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | LT _v ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MINUS _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MINUSEQ _v ->
            _menhir_run195 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MINUSMINUS _v ->
            _menhir_run193 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MOD _v ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MODEQ _v ->
            _menhir_run190 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MULT _v ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | MULTEQ _v ->
            _menhir_run187 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | NEQ _v ->
            _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | PLUS _v ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | PLUSEQ _v ->
            _menhir_run184 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | PLUSPLUS _v ->
            _menhir_run182 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | RSHIFT _v ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | RSHIFTEQ _v ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | SEMICOLON _v ->
            _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | SHORTASSIGN _v ->
            _menhir_run175 _menhir_env (Obj.magic _menhir_stack) MenhirState239 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState239)
    | _ ->
        _menhir_fail ()

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
# 5730 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 219 "parser.mly"
                                              ( (Ast.Break)::_1 )
# 5737 "parser.ml"
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
# 5762 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 220 "parser.mly"
                                              ( (Ast.Continue)::_1 )
# 5769 "parser.ml"
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
# 5794 "parser.ml"
            )) = _v in
            let ((_menhir_stack, (_1 : (Ast.statement list))), _) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.statement list) = 
# 222 "parser.mly"
                                              ( failwith "fallthrough statements are not supported in GoLite" )
# 5801 "parser.ml"
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
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BININTLITERAL _v ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BINXOR _v ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | BOOLNOT _v ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | DECINTLITERAL _v ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | FLOATLITERAL _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | HEXINTLITERAL _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | IDENTIFIER _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | MINUS _v ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | MULT _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | OCTINTLITERAL _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | PLUS _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | RECEIVE _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | RUNELITERAL _v ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | STRINGLITERAL _v ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _v
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState226
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState226)
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
# 5895 "parser.ml"
                )) = _v in
                let (((_menhir_stack, (_1 : (Ast.statement list))), _), (_3 : (
# 25 "parser.mly"
       (string * int)
# 5900 "parser.ml"
                ))) = _menhir_stack in
                let _2 = () in
                let _v : (Ast.statement list) = 
# 221 "parser.mly"
                                              ( failwith "goto statements are not supported in GoLite" )
# 5906 "parser.ml"
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
    | IF _v ->
        _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | INTERFACE ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | INTTYPE ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | LCURLY ->
        _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState159
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
# 5961 "parser.ml"
            )) = _v in
            let _v : (int option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 5966 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | BINAND _ | BININTLITERAL _ | BINXOR _ | BOOLNOT _ | BREAK | CHAN | CONTINUE | DECINTLITERAL _ | ELSE | EOF | FALLTHROUGH | FLOATLITERAL _ | FLOATTYPE | FUNC | GO | GOTO | HEXINTLITERAL _ | IDENTIFIER _ | IF _ | INTERFACE | INTTYPE | LCURLY | LPAR _ | LSQUARE _ | MAP | MINUS _ | MULT _ | OCTINTLITERAL _ | PLUS _ | RCURLY | RECEIVE _ | RETURN | RUNELITERAL _ | RUNETYPE | STRINGLITERAL _ | STRINGTYPE | STRUCT | TYPE | VAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _v : (int option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 5974 "parser.ml"
             in
            _menhir_goto_option_SEMICOLON_ _menhir_env _menhir_stack _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
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
# 6048 "parser.ml"
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
    | TYPE ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | VAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159

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
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245)
    | RPAR _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : ((string * Ast.typeT) list))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list option) = 
# 102 "/usr/share/menhir/standard.mly"
    ( Some x )
# 6098 "parser.ml"
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
# 84 "parser.mly"
                          ( _2::_1 )
# 6119 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState138 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.type_decl)) = _v in
        let _v : (Ast.type_decl list) = 
# 83 "parser.mly"
                          ( [_1] )
# 6129 "parser.ml"
         in
        _menhir_goto_type_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState137 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (Ast.type_decl)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.type_decl list) = 
# 79 "parser.mly"
                                        ( [_2] )
# 6141 "parser.ml"
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
# 6158 "parser.ml"
         in
        _menhir_goto_var_specs _menhir_env _menhir_stack _menhir_s _v
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (Ast.variable_decl list)) = _v in
        let _v : (Ast.variable_decl list) = 
# 95 "parser.mly"
                          ( _1 )
# 6168 "parser.ml"
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
# 6180 "parser.ml"
         in
        _menhir_goto_var_decls _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.typeT) -> (
# 5 "parser.mly"
      (int)
# 6189 "parser.ml"
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
# 6252 "parser.ml"
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
# 6279 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 189 "parser.mly"
                                            ( Ast.SelectExp (_1, (fst _3), (snd _3)) )
# 6286 "parser.ml"
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
    | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIV _ | DIVEQ _ | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))) = _menhir_stack in
        let _v : (Ast.exp) = 
# 178 "parser.mly"
                                            ( Ast.PrimExp _1 )
# 6395 "parser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run158 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.statement list) = 
# 213 "parser.mly"
                                              ( [] )
# 6413 "parser.ml"
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
# 129 "parser.mly"
                                                ( Ast.StructType _3 )
# 6438 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_reduce103 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
       (string * int)
# 6449 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 6455 "parser.ml"
    ))) = _menhir_stack in
    let _v : (Ast.typeT) = 
# 122 "parser.mly"
                      ( Ast.DefinedType ((fst _1), None) )
# 6460 "parser.ml"
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
# 6480 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 5 "parser.mly"
      (int)
# 6485 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.typeT) = 
# 121 "parser.mly"
                      ( _2 )
# 6490 "parser.ml"
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
# 6505 "parser.ml"
        ))), _, (_2 : (
# 7 "parser.mly"
      (int)
# 6509 "parser.ml"
        ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 124 "parser.mly"
                          ( Ast.SliceType _3 )
# 6514 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState159 | MenhirState226 | MenhirState216 | MenhirState213 | MenhirState210 | MenhirState207 | MenhirState204 | MenhirState201 | MenhirState198 | MenhirState195 | MenhirState190 | MenhirState187 | MenhirState184 | MenhirState179 | MenhirState175 | MenhirState168 | MenhirState167 | MenhirState160 | MenhirState132 | MenhirState127 | MenhirState27 | MenhirState40 | MenhirState41 | MenhirState44 | MenhirState49 | MenhirState50 | MenhirState105 | MenhirState95 | MenhirState93 | MenhirState91 | MenhirState89 | MenhirState87 | MenhirState85 | MenhirState83 | MenhirState81 | MenhirState79 | MenhirState77 | MenhirState75 | MenhirState73 | MenhirState71 | MenhirState69 | MenhirState67 | MenhirState65 | MenhirState63 | MenhirState61 | MenhirState59 | MenhirState56 | MenhirState54 | MenhirState52 ->
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
# 6542 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (Ast.primary_exp))), (_3 : (
# 5 "parser.mly"
      (int)
# 6547 "parser.ml"
            ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.primary_exp) = 
# 191 "parser.mly"
                                            ( failwith "Type assertions are not supported in GoLite" )
# 6553 "parser.ml"
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
# 6581 "parser.ml"
        ))), _, (_2 : (Ast.exp))), _, (_3 : (
# 7 "parser.mly"
      (int)
# 6585 "parser.ml"
        ))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 123 "parser.mly"
                              ( Ast.ArrayType (_4, _2) )
# 6590 "parser.ml"
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
# 6644 "parser.ml"
        ))), _, (_3 : (Ast.typeT))), (_4 : (
# 7 "parser.mly"
      (int)
# 6648 "parser.ml"
        ))), _, (_5 : (Ast.typeT))) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.typeT) = 
# 126 "parser.mly"
                                    ( failwith "Map types are not suppoted in GoLite" )
# 6654 "parser.ml"
         in
        _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 13 "parser.mly"
      (int)
# 6663 "parser.ml"
        ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : (Ast.typeT) = 
# 125 "parser.mly"
                      ( Ast.PointerType _2 )
# 6668 "parser.ml"
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
# 6683 "parser.ml"
            )) = _v in
            let (((_menhir_stack, (_1 : ((string * Ast.typeT) list))), _, (_2 : (string list))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : ((string * Ast.typeT) list) = 
# 137 "parser.mly"
                                            (
      let f = _2 in
        let ft = List.map (fun f -> (f, _3)) f in
          _1 @ ft
   )
# 6693 "parser.ml"
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
# 6774 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.variable_decl list) = 
# 99 "parser.mly"
                                                ( List.map (fun iden -> Ast.VarDeclTypeNoInit (_2, iden, _3)) _1 )
# 6780 "parser.ml"
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
# 6801 "parser.ml"
            )) = _v in
            let (((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 6806 "parser.ml"
            ))), _, (_2 : (
# 19 "parser.mly"
      (int)
# 6810 "parser.ml"
            ))), _, (_3 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 87 "parser.mly"
                                      ( failwith "Type aliases not supported in GoLite" )
# 6815 "parser.ml"
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
# 6836 "parser.ml"
            )) = _v in
            let ((_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 6841 "parser.ml"
            ))), _, (_2 : (Ast.typeT))) = _menhir_stack in
            let _v : (Ast.type_decl) = 
# 88 "parser.mly"
                                      ( Ast.TypeDecl (_2, (fst _1), (snd _1)) )
# 6846 "parser.ml"
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
# 6862 "parser.ml"
         in
        _menhir_goto_option_typeT_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Ast.typeT))) = _menhir_stack in
        let _v : ((string * Ast.typeT) list) = 
# 117 "parser.mly"
                                                ( [] )
# 6872 "parser.ml"
         in
        _menhir_goto_func_params _menhir_env _menhir_stack _menhir_s _v
    | MenhirState246 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (_1 : ((string * Ast.typeT) list))), _, (_3 : (string list))), _, (_4 : (Ast.typeT))) = _menhir_stack in
        let _2 = () in
        let _v : ((string * Ast.typeT) list) = 
# 118 "parser.mly"
                                                ( (List.map (fun iden -> (iden, _4)) _3) @ _1 )
# 6883 "parser.ml"
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
# 6907 "parser.ml"
        )) = _v in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _) = _menhir_stack in
        let _2 = () in
        let _v : (string list) = 
# 145 "parser.mly"
                                  ( (fst _3)::_1 )
# 6914 "parser.ml"
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
# 6927 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 43 "parser.mly"
       (string)
# 6935 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 188 "parser.mly"
                                            ( Ast.StrLit (_1) )
# 6940 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "parser.mly"
       (string)
# 6947 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 42 "parser.mly"
       (string)
# 6955 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 187 "parser.mly"
                                            ( Ast.RuneLit (_1) )
# 6960 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (int)
# 6967 "parser.ml"
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
# 7032 "parser.ml"
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
# 37 "parser.mly"
       (string)
# 7097 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 37 "parser.mly"
       (string)
# 7105 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 185 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Oct) )
# 7110 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 7117 "parser.ml"
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
# 7182 "parser.ml"
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
# 7247 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR _ ->
        _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack)
    | ASSIGN _ | BINAND _ | BINANDEQ _ | BINANDNOT _ | BINANDNOTEQ _ | BINOR _ | BINOREQ _ | BINXOR _ | BINXOREQ _ | BOOLAND _ | BOOLOR _ | COMMA | DIV _ | DIVEQ _ | DOT | EQ _ | GEQ _ | GT _ | LCURLY | LEQ _ | LSHIFT _ | LSHIFTEQ _ | LSQUARE _ | LT _ | MINUS _ | MINUSEQ _ | MINUSMINUS _ | MOD _ | MODEQ _ | MULT _ | MULTEQ _ | NEQ _ | PLUS _ | PLUSEQ _ | PLUSPLUS _ | RPAR _ | RSHIFT _ | RSHIFTEQ _ | RSQUARE _ | SEMICOLON _ | SHORTASSIGN _ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (_1 : (
# 25 "parser.mly"
       (string * int)
# 7261 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.primary_exp) = 
# 181 "parser.mly"
                                            ( Ast.Var ((fst _1), (snd _1)) )
# 7266 "parser.ml"
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
# 7279 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 39 "parser.mly"
       (string)
# 7287 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 186 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Hex) )
# 7292 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 41 "parser.mly"
       (float)
# 7299 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 41 "parser.mly"
       (float)
# 7307 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 182 "parser.mly"
                                            ( Ast.FloatLit (_1) )
# 7312 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 36 "parser.mly"
       (string)
# 7319 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 36 "parser.mly"
       (string)
# 7327 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 183 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Dec) )
# 7332 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (int)
# 7339 "parser.ml"
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
# 7404 "parser.ml"
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
# 38 "parser.mly"
       (string)
# 7469 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 38 "parser.mly"
       (string)
# 7477 "parser.ml"
    )) = _v in
    let _v : (Ast.primary_exp) = 
# 184 "parser.mly"
                                            ( Ast.IntLit (_1, Ast.Bin) )
# 7482 "parser.ml"
     in
    _menhir_goto_primary_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 7489 "parser.ml"
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

and _menhir_run139 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 7554 "parser.ml"
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

and _menhir_goto_option_typeT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.typeT option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LCURLY ->
        _menhir_run158 _menhir_env (Obj.magic _menhir_stack) MenhirState157
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState157

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
# 136 "parser.mly"
                    ( [] )
# 7652 "parser.ml"
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
# 132 "parser.mly"
                      ( Ast.StrType )
# 7670 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 133 "parser.mly"
                      ( Ast.RuneType )
# 7682 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "parser.mly"
      (int)
# 7689 "parser.ml"
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
# 7775 "parser.ml"
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
# 7875 "parser.ml"
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
# 130 "parser.mly"
                      ( Ast.IntType )
# 7919 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 127 "parser.mly"
                      ( failwith "Interface types are not suppoted in GoLite" )
# 7931 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
       (string * int)
# 7938 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 131 "parser.mly"
                      ( Ast.FloatType )
# 7953 "parser.ml"
     in
    _menhir_goto_typeT _menhir_env _menhir_stack _menhir_s _v

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.typeT) = 
# 128 "parser.mly"
                      ( failwith "Channel types are not suppoted in GoLite" )
# 7965 "parser.ml"
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
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | COMMA ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState242 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState242
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState242)
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | CHAN ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | COMMA ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | FLOATTYPE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | IDENTIFIER _v ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | INTERFACE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | INTTYPE ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | LPAR _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | LSQUARE _v ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | MAP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | MULT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState246 _v
        | RUNETYPE ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | STRINGTYPE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | STRUCT ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState246
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState246)
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

and _menhir_run137 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState246 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState245 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState242 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState239 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState227 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState226 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState220 ->
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
    | MenhirState211 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState210 ->
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
    | MenhirState205 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState204 ->
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
    | MenhirState199 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState198 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState196 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState195 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState191 ->
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
    | MenhirState185 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState184 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState180 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState179 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState176 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState175 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState174 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState171 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState169 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState168 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState167 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState163 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState160 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState159 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState157 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState155 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState153 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
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
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState116 ->
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
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
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
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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
# 8739 "parser.ml"
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
# 8756 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 25 "parser.mly"
       (string * int)
# 8764 "parser.ml"
    )) = _v in
    let _v : (string list) = 
# 144 "parser.mly"
                                  ( [(fst _1)] )
# 8769 "parser.ml"
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
# 8789 "parser.ml"
        ) = 
# 63 "parser.mly"
                                                              ( Ast.Program (_1, _3) )
# 8793 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : (
# 59 "parser.mly"
       (Ast.program)
# 8800 "parser.ml"
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
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
                | RPAR _ ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_s = MenhirState153 in
                    let _v : ((string * Ast.typeT) list option) = 
# 100 "/usr/share/menhir/standard.mly"
    ( None )
# 8830 "parser.ml"
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
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | TYPE ->
        _menhir_run137 _menhir_env (Obj.magic _menhir_stack) MenhirState8
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
# 8866 "parser.ml"
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
# 8885 "parser.ml"
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
# 8917 "parser.ml"
                )) = _v in
                let (_menhir_stack, (_2 : (
# 25 "parser.mly"
       (string * int)
# 8922 "parser.ml"
                ))) = _menhir_stack in
                let _1 = () in
                let _v : (Ast.package_clause) = 
# 66 "parser.mly"
                                 ( Ast.Package (fst _2) )
# 8928 "parser.ml"
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
# 8943 "parser.ml"
                     in
                    _menhir_goto_import_decls _menhir_env _menhir_stack _v
                | EOF | FUNC | TYPE | VAR ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _v : (unit) = 
# 69 "parser.mly"
                        ( () )
# 8951 "parser.ml"
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
  


# 8979 "parser.ml"
