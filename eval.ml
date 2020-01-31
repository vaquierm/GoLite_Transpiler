exception Unknownvar of string

let lookup var env =
  let (xval, yval, zval) = env in
  match var with 
    | "x" -> xval
    | "y" -> yval
    | "z" -> zval
    | _   -> raise (Unknownvar var)

let eval_op v0 op v1 = match op with
  | Ast.Add -> v0 + v1
  | Ast.Sub -> v0 - v1
  | Ast.Mul -> v0 * v1
  | Ast.Div -> v0 / v1

let rec eval_exp exp env = match exp with
  | Ast.Var var ->
    lookup var env
  | Ast.Binop (exp0,op,exp1) ->
    let v0 = eval_exp exp0 env in
    let v1 = eval_exp exp1 env in
    eval_op v0 op v1
