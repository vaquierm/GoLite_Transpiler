%{ 
  open Lexing

%}

%token EOF
%token LPAR RPAR
%token LCURLY RCURLY
%token LSQUARE RSQUARE
%token COLON SEMICOLON

%token COMMA DOT THREEDOT

%token<int> PLUS MINUS MULT DIV BINAND BINOR BINXOR BINANDNOT RSHIFT LSHIFT MOD
%token<int> PLUSEQ MINUSEQ MULTEQ DIVEQ BINANDEQ BINOREQ BINXOREQ BINANDNOTEQ RSHIFTEQ LSHIFTEQ MODEQ
%token<int> PLUSPLUS MINUSMINUS

%token<int> BOOLAND BOOLOR BOOLNOT

%token<int> ASSIGN SHORTASSIGN

%token<int> RECEIVE

%token<int> EQ LT LEQ GT GEQ

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

%start <Ast.package_clause> start
%%

/* Productions */
start : package_clause import_decls top_level_decls EOF       { $1 };

package_clause
  : PACKAGE IDENTIFIER SEMICOLON { Ast.Package (fst $2) }

import_decls
  :                     { () }
  | IMPORT              { failwith "Packages are not supported in GoLite."}

top_level_decls
  :                     { [] }
  | top_level_decls type_decls { $2 @ $1 }

type_decls
  : TYPE type_spec                      { [$2] }
  | TYPE LPAR type_specs RPAR SEMICOLON { $3 }

type_specs
  :                       { [] }
  | type_specs type_spec  { $2::$1 }

type_spec
  : IDENTIFIER ASSIGN typeT SEMICOLON { failwith "Type aliases not supported in GoLite" }
  | IDENTIFIER typeT        SEMICOLON { Ast.TypeDecl ($2, (fst $1)) }

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

exp
  : FLOATLITERAL    { Ast.Float ($1) }
