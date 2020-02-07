open Ast

(* TODO temporary *)
let type_exp exp =
  match exp with
  | Binop (e1, op, e2, _) -> IntType
  | _ -> IntType
;;