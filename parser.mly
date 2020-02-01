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

%start <Ast.exp> start
%%

/* Productions */
start : expr EOF       { $1 };

expr
  :  expr PLUS term    { Ast.Binop ($1,Ast.Add,$3) }
  |  expr MINUS term   { Ast.Binop ($1,Ast.Sub,$3) }
  |  term              { $1 };

term
  :  term MULT factor  { Ast.Binop($1,Ast.Mul,$3) }
  |  term DIV factor { Ast.Binop($1,Ast.Div,$3) }
  |  factor            { $1 };

factor
  :  IDENTIFIER        { Ast.Var (fst $1) }
  |  LPAR expr RPAR    { $2 };
