type binop = 
  | Add
  | Sub
  | Mul
  | Div

type exp = 
  | Var of string
  | Binop of exp * binop * exp
