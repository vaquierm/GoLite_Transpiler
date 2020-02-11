open Ast

(* TODO temporary *)
let rec type_exp exp env =
  match exp with
  | Binop (e1, op, e2, _) -> IntType
  | PrimExp p_exp -> type_prim_exp p_exp env
  | _ -> IntType
and type_prim_exp p_exp env =
  match p_exp with
  (*| Var (x, l) -> Env.get_var x env l*)
  | _ -> IntType
;;