(* This file is used to typecheck the program *)

open Ast

(* Ge the underlying type of defined types *)
let rec resolve_type t =
  match t with
  | DefinedType (_, None, _) -> failwith "Defined type was never resolved during weeding"
  | DefinedType (_, Some t', _) -> resolve_type t'
  | _ -> t
;;

let is_numeric t =
  let underlying_t = resolve_type t in
    match underlying_t with
    | IntType | RuneType | FloatType -> true
    | _ -> false
;;

let can_reference e =
  match e with
  | PrimExp p_exp ->
    begin match p_exp with
    | Var _ | SelectExp _ | IndexExp _ -> true
    | _ -> false
    end
  | _ -> false 
;;

let rec type_exp exp env =
  match exp with
  | Binop (e1, op, e2, l) -> IntType
  | Unary _ -> type_unary exp env
  | PrimExp p_exp -> type_prim_exp p_exp env
and type_prim_exp p_exp env =
  match p_exp with
  | Var (x, l) -> Env.get_var x env l
  | FloatLit _ -> FloatType
  | IntLit _ -> IntType
  | RuneLit _ -> RuneType
  | BoolLit _ -> BoolType
  | StrLit _ -> StrType
  | _ -> IntType
and type_unary u env =
  match u with
  | Unary (op, e, l) ->
    let e_t = type_exp e env in
    let u_t = resolve_type e_t in
    begin match op with
    | UMinus ->
      if not(is_numeric u_t) then
        raise (Exceptions.TypeError ("The unary minus operator cannot be applied to type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      else
        e_t
    | UBinNOT ->
      if not(is_numeric u_t) || (u_t == FloatType) then
        raise (Exceptions.TypeError ("The bitwise NOT operator cannot be applied to type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      else
        e_t
    | BoolNOT ->
      if not(u_t = BoolType) then
        raise (Exceptions.TypeError ("The logical NOT operator cannot be applied to type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      else
        e_t
    | Ref ->
      if can_reference e then
        PointerType (e_t)
      else 
        raise (Exceptions.TypeError ("Cannot reference the expression '" ^ Prettyp.exp_str e 0 ^ "'", l))
    | DeRef ->
      begin match u_t with
      | PointerType t -> t
      | _ -> raise (Exceptions.TypeError ("Cannot dereference expression of type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      end
    end
  | _ -> failwith ("'" ^ (Prettyp.exp_str u 0) ^ "' is not a unary expression")
;;

let rec type_stm stm env =
  match stm with
  | _ -> None
and type_block b env =
  match b with
  | StmsBlock stms ->
    let new_scope = Env.push_scope env in
      type_stms_list stms new_scope
(*
The type of statement list will be Some t if there is a return statement
at the end of the list
*)
and type_stms_list stms env =
  match stms with
  | [] -> None
  | stm::stms' ->
    let stm_t = type_stm stm env in
    match stm_t with
    | None -> type_stms_list stms' env
    | Some _ -> stm_t
;;

let typecheck_func f_decl env =
  match f_decl with
  | FuncDecl (name, in_list, out_opt, StmsBlock (stms), l) ->
    let func_env = Env.open_function_scope env f_decl in
      let body_t_opt = type_stms_list stms func_env in
        begin match body_t_opt, out_opt with
        | Some t_b, Some t_o when not (t_b = t_o) ->
          raise (Exceptions.TypeError ("The function expected a return type of '" ^ Prettyp.typeT_str t_o 0 ^ "', but instead got '" ^ Prettyp.typeT_str t_b 0 ^ "'", l))
        | Some t_b, None ->
          raise (Exceptions.TypeError ("The function should not return anything", l))
        | None, Some t_o ->
          raise (Exceptions.TypeError ("The function is missing a return statement of type '" ^ Prettyp.typeT_str t_o 0 ^ "'", l))
        | _ -> ()
        end
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
