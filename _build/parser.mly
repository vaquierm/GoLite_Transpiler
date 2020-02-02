%{ 
  open Lexing

%}

%token EOF
%token LPAR RPAR
%token LCURLY RCURLY
%token LSQUARE RSQUARE
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

%token BREAK DEFAULT FUNC INTERFACE SELECT CASE DEFER GO
%token MAP STRUCT CHAN ELSE GOTO PACKAGE SWITCH CONS FALLTHROUGH
%token IF RANGE TYPE CONTINUE FOR IMPORT RETURN VAR
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
start : package_clause import_decls top_level_decls EOF       { Ast.Program ($1, $3) };

package_clause
  : PACKAGE IDENTIFIER SEMICOLON { Ast.Package (fst $2) }

import_decls
  :                     { () }
  | IMPORT              { failwith "Packages are not supported in GoLite."}

top_level_decls
  :                     { [] }
  | top_level_decls type_decls { (List.map (fun var -> Ast.TopTypeDecl var) $2) @ $1 }
  | top_level_decls var_decls { (List.map (fun var -> Ast.TopVarDecl var) $2) @ $1 }

type_decls
  : TYPE type_spec                      { [$2] }
  | TYPE LPAR type_specs RPAR SEMICOLON { $3 }

type_specs
  :                       { [] }
  | type_specs type_spec  { $2::$1 }

type_spec
  : IDENTIFIER ASSIGN typeT SEMICOLON { failwith "Type aliases not supported in GoLite" }
  | IDENTIFIER typeT        SEMICOLON { Ast.TypeDecl ($2, (fst $1)) }

var_decls
  : VAR var_spec                      { $2 }
  | VAR LPAR var_specs RPAR SEMICOLON { $3 }

var_specs
  :                       { [] }
  | var_specs var_spec    { $2 @ $1 }

var_spec
  : ident_list typeT SEMICOLON                  { List.map (fun iden -> Ast.VarDeclTypeNoInit ($2, iden, $3)) $1 }
  | ident_list typeT ASSIGN exp_list SEMICOLON  { List.map2 (fun iden exp -> Ast.VarDeclTypeInit ($2, iden, exp, $5)) $1 $4 }
  | ident_list ASSIGN exp_list SEMICOLON        { List.map2 (fun iden exp -> Ast.VarDeclNoTypeInit (iden, exp, $4)) $1 $3 }

typeT
  : LPAR typeT RPAR   { $2 }
  | IDENTIFIER        { failwith "TODO keep track of underlying types" }
  | LSQUARE exp RSQUARE typeT { Ast.ArrayType ($4, $2) }
  | LSQUARE RSQUARE typeT { Ast.SliceType $3 }
  | MULT typeT        { Ast.PointerType $2 }
  | MAP RSQUARE typeT RSQUARE typeT { failwith "Map types are not suppoted in GoLite" }
  | INTERFACE         { failwith "Interface types are not suppoted in GoLite" }
  | CHAN              { failwith "Channel types are not suppoted in GoLite" }
  | STRUCT LCURLY field_decls RCURLY            { Ast.StructType $3 }
  | INTTYPE           { Ast.IntType }
  | FLOATTYPE         { Ast.FloatType }
  | STRINGTYPE        { Ast.StrType }
  | RUNETYPE          { Ast.RuneType }

field_decls
  :                 { [] }
  | field_decls ident_list typeT SEMICOLON  {
      let f = $2 in
        let ft = List.map (fun f -> (f, $3)) f in
          $1 @ ft
   }

ident_list
  :                               { [] } 
  | ident_list COMMA IDENTIFIER   { (fst $3)::$1 }

exp_list
  :                               { [] }
  | exp_list COMMA exp            { $3::$1 }

exp
  : FLOATLITERAL                            { Ast.FloatLit ($1) }
  | DECINTLITERAL                           { Ast.IntLit ($1, Ast.Dec) }
  | BININTLITERAL                           { Ast.IntLit ($1, Ast.Bin) }
  | OCTINTLITERAL                           { Ast.IntLit ($1, Ast.Oct) }
  | HEXINTLITERAL                           { Ast.IntLit ($1, Ast.Hex) }
  | RUNELITERAL                             { Ast.RuneLit ($1) }
  | STRINGLITERAL                           { Ast.StrLit ($1) }
  | exp PLUS exp                            { Ast.Binop ($1, Ast.BPlus, $3, $2) }
  | exp MINUS exp                           { Ast.Binop ($1, Ast.BMinus, $3, $2) }
  | exp MULT exp                            { Ast.Binop ($1, Ast.Mult, $3, $2) }
  | exp DIV exp                             { Ast.Binop ($1, Ast.Div, $3, $2) }
  | exp BINAND exp                          { Ast.Binop ($1, Ast.BinAND, $3, $2) }
  | exp BINOR exp                           { Ast.Binop ($1, Ast.BinOR, $3, $2) }
  | exp BINXOR exp                          { Ast.Binop ($1, Ast.BinXOR, $3, $2) }
  | exp BINANDNOT exp                       { Ast.Binop ($1, Ast.BinANDNOT, $3, $2) }
  | exp RSHIFT exp                          { Ast.Binop ($1, Ast.Rshift, $3, $2) }
  | exp LSHIFT exp                          { Ast.Binop ($1, Ast.Lshift, $3, $2) }
  | exp MOD exp                             { Ast.Binop ($1, Ast.Mod, $3, $2) }
  | exp BOOLAND exp                         { Ast.Binop ($1, Ast.BoolAND, $3, $2) }
  | exp BOOLOR exp                          { Ast.Binop ($1, Ast.BoolOR, $3, $2) }
  | PLUS exp %prec __unary_precedence__     { $2 }
  | MINUS exp %prec __unary_precedence__    { Ast.Urinary (Ast.UMinus, $2, $1) }
  | BOOLNOT exp %prec __unary_precedence__  { Ast.Urinary (Ast.BoolNOT, $2, $1) }
  | BINXOR exp %prec __unary_precedence__   { Ast.Urinary (Ast.UBinNOT, $2, $1) }
  | RECEIVE exp %prec __unary_precedence__  { failwith ("Line: " ^ (string_of_int $1) ^ " Go lite does not support the type <-") }
  | exp EQ exp                              { Ast.Binop ($1, Ast.EQ, $3, $2) }
  | exp NEQ exp                             { Ast.Binop ($1, Ast.NEQ, $3, $2) }
  | exp LT exp                              { Ast.Binop ($1, Ast.LT, $3, $2) }
  | exp GT exp                              { Ast.Binop ($1, Ast.GT, $3, $2) }
  | exp LEQ exp                             { Ast.Binop ($1, Ast.LEQ, $3, $2) }
  | exp GEQ exp                             { Ast.Binop ($1, Ast.GEQ, $3, $2) }

