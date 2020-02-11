(* This file is used to typecheck the program *)

open Ast

(* TODO temporary *)
let rec type_exp exp env =
  match exp with
  | Binop (e1, op, e2, _) -> IntType
  | PrimExp p_exp -> type_prim_exp p_exp env
  | _ -> IntType
and type_prim_exp p_exp env =
  match p_exp with
  | Var (x, l) -> Env.get_var x env l
  | _ -> IntType
;;

let rec type_stm stm env =
  match stm with
  | _ -> ()
and type_block b env =
  match b with
  | StmsBlock stms ->
    let new_scope = Env.push_scope env in
      type_stms_list stms new_scope
and type_stms_list stms env =
  match stms with
  | [] -> ()
  | stm::stms' ->
    type_stm stm env;
    type_stms_list stms' env
;;

let typecheck_func f_decl env =
  match f_decl with
  | FuncDecl (name, in_list, out_opt, StmsBlock (stms), l) ->
    let func_env = Env.open_function_scope env f_decl in
      type_stms_list stms env
;;

let typecheck_program prog =
  match prog with
  | Program (_, decl_list) ->
    let env = Env.build_top_level_env decl_list in
      let rec typecheck_funcs decl_list =
        match decl_list with
        | [] -> ()
        | d::decls' ->
          begin match d with
          | TopFuncDecl f_decl -> typecheck_func f_decl env
          | _ -> ()
          end;
          typecheck_funcs decls'
      in
        typecheck_funcs decl_list
;;
