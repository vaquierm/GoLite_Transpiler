%{ %}

%token EOF
%token PLUS MINUS STAR SLASH
%token LPAR RPAR
%token <string>IDENTIFIER

%start <Ast.exp> start
%%

/* Productions */
start : expr EOF       { $1 };

expr
  :  expr PLUS term    { Ast.Binop ($1,Ast.Add,$3) }
  |  expr MINUS term   { Ast.Binop ($1,Ast.Sub,$3) }
  |  term              { $1 };

term
  :  term STAR factor  { Ast.Binop($1,Ast.Mul,$3) }
  |  term SLASH factor { Ast.Binop($1,Ast.Div,$3) }
  |  factor            { $1 };

factor
  :  IDENTIFIER        { Ast.Var $1 }
  |  LPAR expr RPAR    { $2 };
