(* This file is used to typecheck the program *)

open Ast

(* Ge the underlying type of defined types *)
let rec resolve_type t =
  match t with
  | DefinedType (_, None, _) -> failwith "Defined type was never resolved during weeding"
  | DefinedType (_, Some t', _) -> resolve_type t'
  | _ -> t
;;

let is_whole_num t =
  let underlying_t = resolve_type t in
    match underlying_t with
    | IntType | RuneType -> true
    | _ -> false
;;

let is_numeric t =
  is_whole_num t || t = FloatType
;;

(* True if the expression is a literal *)
let is_literal exp =
  match exp with
  | PrimExp p_exp ->
    begin match p_exp with
    | FloatLit _ | IntLit _ | RuneLit _ | BoolLit _ | StrLit _ -> true
    | _ -> false
    end
  | _ -> false
;; 

(* True if the reference operator '&' can be used un the expression *)
let can_reference e =
  match e with
  | PrimExp p_exp ->
    begin match p_exp with
    | Var _ | SelectExp _ | IndexExp _ -> true
    | _ -> false
    end
  | _ -> false 
;;

(* True if the binary operator is compatible with the type t *)
let op_compatible b_op t =
  let u_t = resolve_type t in
  match b_op with
  | BPlus -> (is_numeric u_t || u_t = StrType)
  | BMinus | Mult | Div -> is_numeric u_t
  | BinAND | BinOR | BinXOR | Rshift | Lshift | Mod -> is_whole_num u_t
  | BoolAND | BoolOR -> u_t = BoolType
  | _ -> true
;;

let rec type_exp exp env =
  match exp with
  | Binop _ -> type_binop exp env
  | Unary _ -> type_unary exp env
  | PrimExp p_exp -> type_prim_exp p_exp env
and type_prim_exp p_exp env =
  match p_exp with
  | Var (x, l) -> Some (Env.get_var x env l)
  | FloatLit _ -> Some FloatType
  | IntLit _ -> Some IntType
  | RuneLit _ -> Some RuneType
  | BoolLit _ -> Some BoolType
  | StrLit _ -> Some StrType
  | SelectExp (p_exp, field, l) ->
    let t_opt = type_prim_exp p_exp env in
    let t = begin match t_opt with
    | None -> raise (Exceptions.TypeError ("Cannot access field '" ^ field ^ "' from expression '" ^ Prettyp.prim_exp_str p_exp 0 ^ "'", l))
    | Some t -> t
    end in
    let t_u = resolve_type t in
    let field_not_found () = raise (Exceptions.TypeError ("The type '" ^ Prettyp.typeT_str t 0 ^ "' doe not have any field '" ^ field ^ "'", l)) in
      begin match t_u with
      | StructType (f_l, _) ->
        let field_type = ref IntType in
        if List.exists (fun (f, t) -> if f = field then (field_type := t; true) else false) f_l then
          Some (!field_type)
        else field_not_found ()
      | _ -> field_not_found ()
      end
  | UnsureTypeFuncCall (id, _, l) -> failwith ("Function call or cast '" ^ id ^ "' was never resolved during weeding on line " ^ (string_of_int l))
  | IndexExp (p_exp, e, l) ->
    let p_t = type_prim_exp p_exp env in
      if p_t = None then
        raise (Exceptions.TypeError ("Cannot index expression '" ^ Prettyp.prim_exp_str p_exp 0 ^ "'", l))
      else
        let Some p_t = p_t in
          begin match p_t with
          | SliceType e_t -> Some e_t
          | ArrayType (e_t, _) -> Some e_t
          | _ -> raise (Exceptions.TypeError ("Cannot index type '" ^ Prettyp.typeT_str p_t 0 ^ "'", l))
          end
  | FuncCall (name, in_l, l) ->
      let (in_t_l, out_t) = Env.get_func name env l in
        let rec check_input_types in_l in_t_l =
          begin match in_l, in_t_l with
          | [], [] -> ()
          | e::in_l', t::in_t_l' ->
            let e_t_op = type_exp e env in
              let e_t =
                begin match e_t_op with
                | None -> raise (Exceptions.TypeError ("In function call '" ^ name ^ "', expression '" ^ Prettyp.exp_str e 0 ^ "' has no type. Expected '" ^ Prettyp.typeT_str t 0 ^ "'", l))
                | Some t -> t
                end in
              if e_t = t then check_input_types in_l' in_t_l'
              else raise (Exceptions.TypeError ("In function call '" ^ name ^ "', expression '" ^ Prettyp.exp_str e 0 ^ "' has type '" ^ Prettyp.typeT_str e_t 0 ^ "'. Expected '" ^ Prettyp.typeT_str t 0 ^ "'", l))
          | _ -> failwith "The the type list length and ecpression lest length do not macth"
          end
          in
          if not(List.length in_l = List.length in_t_l) then
            raise (Exceptions.TypeError ("The function '" ^ name ^ "' expects " ^ string_of_int (List.length in_t_l) ^ " arguments. Got " ^ string_of_int (List.length in_l) ^ ".", l))
          else
            check_input_types in_l in_t_l;
            out_t
  | _ -> Some IntType
and type_unary u env =
  match u with
  | Unary (op, e, l) ->
    let e_t_op = type_exp e env in
    let e_t = begin match e_t_op with
    | None -> raise (Exceptions.TypeError ("The operator '" ^ Prettyp.unop_str op ^ "' cannot be applied to expression '" ^ Prettyp.exp_str e 0 ^ "'", l))
    | Some t -> t
    end in
    let u_t = resolve_type e_t in
    begin match op with
    | UMinus ->
      if not(is_numeric u_t) then
        raise (Exceptions.TypeError ("The unary minus operator cannot be applied to type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      else
        Some e_t
    | UBinNOT ->
      if not(is_whole_num u_t) then
        raise (Exceptions.TypeError ("The bitwise NOT operator cannot be applied to type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      else
        Some e_t
    | BoolNOT ->
      if not(u_t = BoolType) then
        raise (Exceptions.TypeError ("The logical NOT operator cannot be applied to type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      else
        Some e_t
    | Ref ->
      if can_reference e then
        Some (PointerType (e_t))
      else 
        raise (Exceptions.TypeError ("Cannot reference the expression '" ^ Prettyp.exp_str e 0 ^ "'", l))
    | DeRef ->
      begin match u_t with
      | PointerType t -> Some t
      | _ -> raise (Exceptions.TypeError ("Cannot dereference expression of type '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      end
    end
  | _ -> failwith ("'" ^ (Prettyp.exp_str u 0) ^ "' is not a unary expression")
and type_binop b_exp env =
  match b_exp with
  | Binop (e1, op, e2, l) ->
    let e1_lit = is_literal e1 in
    let e2_lit = is_literal e2 in
    let has_literal = (e1_lit || e2_lit) in
    let e1_t_op = type_exp e1 env in
    let e2_t_op = type_exp e2 env in
    let (e1_t, e2_t) = begin match e1_t_op, e2_t_op with
    | None, None -> raise (Exceptions.TypeError ("Invalid operation '" ^ Prettyp.binop_str op ^ "'. Expressions '" ^ Prettyp.exp_str e1 0 ^ "' and '" ^ Prettyp.exp_str e2 0 ^ "' have no types." , l))
    | Some _, None -> raise (Exceptions.TypeError ("Invalid operation '" ^ Prettyp.binop_str op ^ "'. Expression '" ^ Prettyp.exp_str e2 0 ^ "' has no type." , l))
    | None, Some _ -> raise (Exceptions.TypeError ("Invalid operation '" ^ Prettyp.binop_str op ^ "'. Expression '" ^ Prettyp.exp_str e1 0 ^ "' has no type." , l))
    | Some t1, Some t2 -> (t1, t2)
    end in
    let e1_t_u = resolve_type e1_t in
    let e2_t_u = resolve_type e2_t in
    if not (op_compatible op e1_t_u) then
      raise (Exceptions.TypeError ("Invalid operation '" ^ Prettyp.binop_str op ^ "' (operator not defined on type '" ^ Prettyp.typeT_str e1_t 0 ^ "')", l))
    else
      if has_literal then
        if not (e1_t_u = e2_t_u) then
          raise (Exceptions.TypeError ("Invalid operation '" ^ Prettyp.binop_str op ^ "' (mismatched types '" ^ Prettyp.typeT_str e1_t 0 ^ "' and '" ^ Prettyp.typeT_str e2_t 0 ^ "')", l))
        else
          begin match e1_lit, e2_lit with
          | true, false -> Some e2_t
          | false, true -> Some e1_t
          | _ -> Some e2_t
          end
      else
        if not (e1_t = e2_t) then
          raise (Exceptions.TypeError ("Invalid operation '" ^ Prettyp.binop_str op ^ "' (mismatched types '" ^ Prettyp.typeT_str e1_t 0 ^ "' and '" ^ Prettyp.typeT_str e2_t 0 ^ "')", l))
        else
          Some e1_t
  | _ -> failwith ("'" ^ (Prettyp.exp_str b_exp 0) ^ "' is not a binop expression")
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