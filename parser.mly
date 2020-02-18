%{ 
%}

%token EOF
%token<int> LPAR RPAR
%token<int> LCURLY RCURLY
%token<int> LSQUARE RSQUARE
%token COLON
%token<int> SEMICOLON

%token COMMA DOT THREEDOT

%token<int> PLUS MINUS MULT DIV BINAND BINOR BINXOR BINANDNOT RSHIFT LSHIFT MOD
%token<int> PLUSEQ MINUSEQ MULTEQ DIVEQ BINANDEQ BINOREQ BINXOREQ BINANDNOTEQ RSHIFTEQ LSHIFTEQ MODEQ
%token<int> PLUSPLUS MINUSMINUS

%token<int> BOOLAND BOOLOR BOOLNOT

%token<int> ASSIGN SHORTASSIGN

%token<int> RECEIVE

%token<int> EQ NEQ LT LEQ GT GEQ

%token <string * int>IDENTIFIER

%token<int> IF FOR STRUCT
%token<int> IMPORT INTERFACE CHAN
%token BREAK DEFAULT FUNC SELECT CASE DEFER GO
%token MAP ELSE GOTO PACKAGE SWITCH CONS FALLTHROUGH
%token RANGE TYPE CONTINUE RETURN VAR
%token <int>PRINT PRINTLN APPEND LEN CAP

%token <string>COMMENT
%token <string>BLOCKCOMMENT

%token <string>DECINTLITERAL
%token <string>OCTINTLITERAL
%token <string>BININTLITERAL
%token <string>HEXINTLITERAL
%token <bool>BOOLLITERAL
%token <float>FLOATLITERAL
%token <string>RUNELITERAL
%token <string>STRINGLITERAL
%token <string>RAWSTRINGLITERAL

%token INTTYPE BOOLTYPE STRINGTYPE RUNETYPE FLOATTYPE

%left BOOLOR
%left BOOLAND
%left GEQ LEQ LT GT EQ NEQ
%left PLUS MINUS
%left MOD
%left LSHIFT RSHIFT BINAND BINOR BINXOR BINANDNOT
%left MULT DIV
%nonassoc __unary_precedence__
%left LPAR
%left DOT

%start <Ast.program> start
%%

/* Productions */
start : package_clause import_decls top_level_decls EOF       {
    let main = ref (Ast.TopFuncDecl (Ast.FuncDecl ("", [], None, Ast.StmsBlock ([], 0), -1))) in
    let rec extract_main decls =
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | Ast.TopFuncDecl (Ast.FuncDecl ("main", [], None, _, _)) ->
        main := d;
        decls'
      | _ -> d::(extract_main decls')
      end
    in
    let witout_main = extract_main $3 in
    if List.length witout_main == List.length $3 then
      raise (Exceptions.SyntaxError ("The program must have a function called main which takes no arguments and returns nothing", None))
    else
      Ast.Program ($1, witout_main @ [!main])
  };

package_clause
  : PACKAGE IDENTIFIER SEMICOLON                    { Ast.Package (fst $2) }

import_decls
  :                                                 { () }
  | IMPORT                                          { raise (Exceptions.UnsuportedError (("Imports are unsupported in GoLite"), $1, None)) }

top_level_decls
  :                                                 { [] }
  | top_level_decls type_decls                      { $1 @ (List.map (fun var -> Ast.TopTypeDecl var) $2) }
  | top_level_decls var_decls                       { $1 @ (List.map (fun var -> Ast.TopVarDecl var) $2) }
  | top_level_decls func_decl                       { $1 @ [(Ast.TopFuncDecl $2)] }

type_decls
  : TYPE type_spec                                  { [$2] }
  | TYPE LPAR type_specs RPAR SEMICOLON             { $3 }

type_specs
  : type_spec                                       { [$1] }
  | type_specs type_spec                            { $1 @ [$2] }

type_spec
  : IDENTIFIER ASSIGN typeT SEMICOLON               { raise (Exceptions.UnsuportedError ("Type aliases are unsuported in GoLite", (snd $1), None)) }
  | IDENTIFIER typeT        SEMICOLON               { Ast.TypeDecl ($2, (fst $1), (snd $1)) }

var_decls
  : VAR var_spec                                    { $2 }
  | VAR LPAR var_specs RPAR SEMICOLON               { $3 }

var_specs
  : var_spec                                        { $1 }
  | var_specs var_spec                              { $2 @ $1 }

var_spec
  : ident_list typeT SEMICOLON                      { List.map (fun iden -> Ast.VarDeclTypeNoInit ($2, iden, $3)) $1 }
  | ident_list typeT ASSIGN exp_list SEMICOLON      { 
    if List.length $1 != List.length $4 then
      raise (Exceptions.SyntaxError ("Assignment mismatch. " ^ (string_of_int (List.length $1)) ^ " variables but " ^ (string_of_int (List.length $4)) ^ " values", Some $5))
    else
      List.map2 (fun iden exp -> Ast.VarDeclTypeInit ($2, iden, exp, $5)) $1 $4 }
  | ident_list ASSIGN exp_list SEMICOLON            {
    if List.length $1 != List.length $3 then
      raise (Exceptions.SyntaxError ("Assignment mismatch. " ^ (string_of_int (List.length $1)) ^ " variables but " ^ (string_of_int (List.length $3)) ^ " values", Some $4))
    else
      List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, $4)) $1 $3 }

func_decl
  : FUNC IDENTIFIER LPAR func_params? RPAR typeT? body              { 
      let params = match $4 with
      | None -> []
      | Some p -> p
      in
      Ast.FuncDecl ((fst $2), params, $6, $7, (snd $2))
    }

func_params
  : ident_list typeT                              { List.map (fun iden -> (iden, $2)) $1 }
  | func_params COMMA ident_list typeT            { $1 @ (List.map (fun iden -> (iden, $4)) $3) }

typeT
  : IDENTIFIER                                    { Ast.DefinedType ((fst $1), None, (snd $1)) }
  | LSQUARE exp RSQUARE typeT                     { Ast.ArrayType ($4, $2) }
  | LSQUARE RSQUARE typeT                         { Ast.SliceType $3 }
  | MULT typeT                                    { Ast.PointerType $2 }
  | MAP RSQUARE typeT RSQUARE typeT               { raise (Exceptions.UnsuportedError ("Map types are unsuported in GoLite", $2, None)) }
  | INTERFACE                                     { raise (Exceptions.UnsuportedError ("Interface types are unsupported in GoLite", $1, None)) }
  | CHAN RECEIVE?                                 { raise (Exceptions.UnsuportedError ("Channel types are unsupported in GoLite", $1, None)) }
  | STRUCT LCURLY field_decls RCURLY              { Ast.StructType ($3, $1) }
  | INTTYPE                                       { Ast.IntType }
  | FLOATTYPE                                     { Ast.FloatType }
  | STRINGTYPE                                    { Ast.StrType }
  | RUNETYPE                                      { Ast.RuneType }

field_decls
  :                                               { [] }
  | field_decls ident_list typeT SEMICOLON {
      let f = $2 in
        let ft = List.map (fun f -> (f, $3)) f in
          $1 @ ft
   }

ident_list
  : IDENTIFIER                                    { [(fst $1)] }
  | ident_list COMMA IDENTIFIER                   { (fst $3) :: $1 }

exp_list
  : exp                                           { [$1] }
  | exp_list COMMA exp                            { $1 @ [$3] }

exp
  : LPAR exp RPAR                                 { $2 }
  | exp PLUS exp                                  { Ast.Binop ($1, Ast.BPlus, $3, $2) }
  | exp MINUS exp                                 { Ast.Binop ($1, Ast.BMinus, $3, $2) }
  | exp MULT exp                                  { Ast.Binop ($1, Ast.Mult, $3, $2) }
  | exp DIV exp                                   { Ast.Binop ($1, Ast.Div, $3, $2) }
  | exp BINAND exp                                { Ast.Binop ($1, Ast.BinAND, $3, $2) }
  | exp BINOR exp                                 { Ast.Binop ($1, Ast.BinOR, $3, $2) }
  | exp BINXOR exp                                { Ast.Binop ($1, Ast.BinXOR, $3, $2) }
  | exp BINANDNOT exp                             { Ast.Binop ($1, Ast.BinAND, Ast.Unary (Ast.UBinNOT, $3, $2), $2) }
  | exp RSHIFT exp                                { Ast.Binop ($1, Ast.Rshift, $3, $2) }
  | exp LSHIFT exp                                { Ast.Binop ($1, Ast.Lshift, $3, $2) }
  | exp MOD exp                                   { Ast.Binop ($1, Ast.Mod, $3, $2) }
  | exp BOOLAND exp                               { Ast.Binop ($1, Ast.BoolAND, $3, $2) }
  | exp BOOLOR exp                                { Ast.Binop ($1, Ast.BoolOR, $3, $2) }
  | PLUS exp %prec __unary_precedence__           { $2 }
  | MINUS exp %prec __unary_precedence__          { Ast.Unary (Ast.UMinus, $2, $1) }
  | BOOLNOT exp %prec __unary_precedence__        { Ast.Unary (Ast.BoolNOT, $2, $1) }
  | BINXOR exp %prec __unary_precedence__         { Ast.Unary (Ast.UBinNOT, $2, $1) }
  | MULT exp %prec __unary_precedence__           { Ast.Unary (Ast.DeRef, $2, $1) }
  | BINAND exp %prec __unary_precedence__         { Ast.Unary (Ast.Ref, $2, $1) }
  | RECEIVE exp %prec __unary_precedence__        { raise (Exceptions.UnsuportedError ("The receive operator '<-' is unsupported in GoLite", $1, None)) }
  | exp EQ exp                                    { Ast.Binop ($1, Ast.EQ, $3, $2) }
  | exp NEQ exp                                   { Ast.Binop ($1, Ast.NEQ, $3, $2) }
  | exp LT exp                                    { Ast.Binop ($1, Ast.LT, $3, $2) }
  | exp GT exp                                    { Ast.Binop ($1, Ast.GT, $3, $2) }
  | exp LEQ exp                                   { Ast.Binop ($1, Ast.LEQ, $3, $2) }
  | exp GEQ exp                                   { Ast.Binop ($1, Ast.GEQ, $3, $2) }
  | primary_exp                                   { Ast.PrimExp $1 }

primary_exp
  : IDENTIFIER                                    { Ast.Var ((fst $1), (snd $1)) }
  | FLOATLITERAL                                  { Ast.FloatLit ($1) }
  | DECINTLITERAL                                 { Ast.IntLit ($1, Ast.Dec) }
  | BININTLITERAL                                 { Ast.IntLit ($1, Ast.Bin) }
  | OCTINTLITERAL                                 { Ast.IntLit ($1, Ast.Oct) }
  | HEXINTLITERAL                                 { Ast.IntLit ($1, Ast.Hex) }
  | RUNELITERAL                                   { Ast.RuneLit ($1) }
  | STRINGLITERAL                                 { Ast.StrLit ($1, false) }
  | RAWSTRINGLITERAL                              { Ast.StrLit ($1, true) }
  | BOOLLITERAL                                   { Ast.BoolLit ($1) }
  | primary_exp DOT IDENTIFIER                    { Ast.SelectExp ($1, (fst $3), (snd $3)) }
  | primary_exp LSQUARE exp RSQUARE               { Ast.IndexExp ($1, $3, $2) }
  | primary_exp DOT LPAR typeT RPAR               { raise (Exceptions.UnsuportedError ("Type assertions are unsupported in GoLite", $3, None)) }
  | typeT LPAR exp_list? RPAR                     {
    let args = match $3 with
    | None -> []
    | Some a -> a
    in
    if List.length args == 1 then
      begin match $1 with
      | Ast.DefinedType (x, _, _) -> Ast.UnsureTypeFuncCall (x, (List.hd args), $2)
      | _ -> Ast.CastExp ($1, (List.hd args), $2)
      end
    else
      begin match $1 with
      | Ast.DefinedType (x, _, _) -> Ast.FuncCall (x, args, $2)
      | _ -> raise (Exceptions.SyntaxError ("A cast expression must have exactly one argument", Some $2))
      end
  }
  | primary_exp LSQUARE exp? COLON exp? RSQUARE {
    let beg = match $3 with
    | None -> Ast.PrimExp (Ast. IntLit ("0", Ast.Dec))
    | Some e -> e
    in
    let en = match $5 with
    | None -> Ast.PrimExp (Ast.LenExp ($1, $2))
    | Some e -> e
    in
    Ast.SliceExp ($1, beg, en, None, $2)
  }
  | primary_exp LSQUARE exp? COLON exp COLON exp RSQUARE {
    let beg = match $3 with
    | None -> Ast.PrimExp (Ast. IntLit ("0", Ast.Dec))
    | Some e -> e
    in
    Ast.SliceExp ($1, beg, $5, Some $7, $2)
  }
  | APPEND LPAR primary_exp COMMA exp RPAR        { Ast.AppendExp ($3, $5, $2) }
  | LEN LPAR primary_exp RPAR                     { Ast.LenExp ($3, $2) }
  | CAP LPAR primary_exp RPAR                     { Ast.CapExp ($3, $2) }

body : LCURLY statement_list RCURLY SEMICOLON?    { Ast.StmsBlock ((List.rev $2), $3) }

statement_list
  :                                               { [] }
  | statement_list body                           { Ast.BlockStm $2 :: $1 }
  | statement_list var_decls                      { (List.map (fun d -> Ast.VarDeclStm d) $2) @ $1 }
  | statement_list type_decls                     { (List.map (fun d -> Ast.TypeDeclStm d) $2) @ $1 }
  | statement_list GO exp SEMICOLON               { raise (Exceptions.UnsuportedError ("go statements are unsuported in GoLite", $4, None)) }
  | statement_list RETURN exp? SEMICOLON          { Ast.Return ($3, $4) :: $1 }
  | statement_list BREAK SEMICOLON                { Ast.Break :: $1 }
  | statement_list CONTINUE SEMICOLON             { Ast.Continue :: $1 }
  | statement_list GOTO IDENTIFIER SEMICOLON      { raise (Exceptions.UnsuportedError ("goto statements are unsuported in GoLite", $4, None)) }
  | statement_list FALLTHROUGH SEMICOLON          { raise (Exceptions.UnsuportedError ("fallthrough statements are unsuported in GoLite", $3, None)) }
  | statement_list simple_statement               { $2 :: $1 }
  | statement_list if_statement                   { $2 :: $1 }
  | statement_list for_statement                  {
    let for_stm = match $2 with
    | Ast.ForStm (None, cond, None, block, line) ->
      Ast.WhileStm (cond, block, line)
    | _ -> $2
    in
    for_stm :: $1
  }

simple_statement
  : exp SEMICOLON                                 { Ast.ExpStm ($1, $2) }
  | exp PLUSPLUS SEMICOLON                        { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BPlus, Ast.PrimExp (Ast.IntLit ("1", Ast.Dec)), $3), $3) }
  | exp MINUSMINUS SEMICOLON                      { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BMinus, Ast.PrimExp (Ast.IntLit ("1", Ast.Dec)), $3), $3) }
  | exp ASSIGN exp SEMICOLON                      { Ast.AssignStm ($1, $3, $4) }
  | exp PLUSEQ exp SEMICOLON                      { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BPlus, $3, $4), $4) }
  | exp MINUSEQ exp SEMICOLON                     { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BMinus, $3, $4), $4) }
  | exp MULTEQ exp SEMICOLON                      { Ast.AssignStm ($1, Ast.Binop ($1, Ast.Mult, $3, $4), $4) }
  | exp DIVEQ exp SEMICOLON                       { Ast.AssignStm ($1, Ast.Binop ($1, Ast.Div, $3, $4), $4) }
  | exp BINANDEQ exp SEMICOLON                    { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BinAND, $3, $4), $4) }
  | exp BINOREQ exp SEMICOLON                     { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BinOR, $3, $4), $4) }
  | exp BINXOREQ exp SEMICOLON                    { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BinXOR, $3, $4), $4) }
  | exp BINANDNOTEQ exp SEMICOLON                 { Ast.AssignStm ($1, Ast.Binop ($1, Ast.BinAND, Ast.Unary (Ast.UBinNOT, $3, $4), $4), $4) }
  | exp RSHIFTEQ exp SEMICOLON                    { Ast.AssignStm ($1, Ast.Binop ($1, Ast.Rshift, $3, $4), $4) }
  | exp LSHIFTEQ exp SEMICOLON                    { Ast.AssignStm ($1, Ast.Binop ($1, Ast.Lshift, $3, $4), $4) }
  | exp MODEQ exp SEMICOLON                       { Ast.AssignStm ($1, Ast.Binop ($1, Ast.Mod, $3, $4), $4) }
  | exp SHORTASSIGN exp SEMICOLON                 {
    let id = match $1 with
    | Ast.PrimExp e ->
      begin match e with
      | Ast.Var (x, _) -> x
      | _ -> raise (Exceptions.SyntaxError ("The left hand side of a short hand assignment must be an id", Some $4))
      end
    | _ -> raise (Exceptions.SyntaxError ("The left hand side of a short hand assignment must be an id", Some $4))
    in
    Ast.VarDeclStm (Ast.VarDeclNoTypeInit (id, $3, $4))
  }
  | PRINT LPAR exp RPAR SEMICOLON                 { Ast.Print ($3, false, $5) }
  | PRINTLN LPAR exp RPAR SEMICOLON               { Ast.Print ($3, true, $5) }

if_statement
  : IF simple_statement exp body ELSE if_statement {
    let inner_else = Ast.StmsBlock ([$6], Ast.if_stm_endline $6)
    in
    let inner = Ast.IfStm ($3, $4, Some inner_else, $1)
    in
    Ast.BlockStm (Ast.StmsBlock ([$2; inner], Ast.if_stm_endline $6))
  }
  | IF simple_statement exp body ELSE body {
    let inner = Ast.IfStm ($3, $4, Some $6, $1)
    in
    Ast.BlockStm (Ast.StmsBlock ([$2; inner], Ast.block_endline $6))
  }
  | IF exp body ELSE if_statement {
    let b = Ast.StmsBlock ([$5], Ast.if_stm_endline $5)
    in
    Ast.IfStm ($2, $3, Some b, $1) 
  }
  | IF exp body ELSE body { Ast.IfStm ($2, $3, Some $5, $1) }
  | IF exp body { Ast.IfStm ($2, $3, None, $1) }
  | IF simple_statement exp body {
    let inner = Ast.IfStm ($3, $4, None, $1)
    in
    Ast.BlockStm (Ast.StmsBlock ([$2; inner], Ast.block_endline $4))
  }

for_statement
  : FOR exp? body {
    Ast.WhileStm ($2, $3, $1)
  }
  | FOR simple_statement exp? SEMICOLON simple_statement body {
    match $2 with
    | Ast.VarDeclStm v_decl -> Ast.BlockStm (Ast.StmsBlock ([$2; Ast.ForStm (None, $3, Some $5, $6, $1)], Ast.block_endline $6))
    | _ -> Ast.ForStm (Some $2, $3, Some $5, $6, $1)
  }
  | FOR SEMICOLON exp? SEMICOLON simple_statement body {
    Ast.ForStm (None, $3, Some $5, $6, $1)
  }
  | FOR simple_statement exp? SEMICOLON SEMICOLON body {
    match $2 with
    | Ast.VarDeclStm v_decl -> Ast.BlockStm (Ast.StmsBlock ([$2; Ast.ForStm (None, $3, None, $6, $1)], Ast.block_endline $6))
    | _ -> Ast.ForStm (Some $2, $3, None, $6, $1)
  }
  | FOR SEMICOLON exp? SEMICOLON SEMICOLON body {
    Ast.ForStm (None, $3, None, $6, $1)
  }


  


