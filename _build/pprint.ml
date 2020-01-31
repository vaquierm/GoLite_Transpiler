let print_op op = match op with
  | Ast.Add -> print_string "+"
  | Ast.Sub -> print_string "-"
  | Ast.Mul -> print_string "*"
  | Ast.Div -> print_string "/"

let rec print_exp exp = match exp with
  | Ast.Var v -> 
    print_string v
  | Ast.Binop (exp0, op, exp1) ->
    begin
      print_string "(";
      print_exp exp0;
      print_op op;
      print_exp exp1;
      print_string ")";
    end
