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

(* Checks if the rexpresison can be assigned to *)
let is_assignable e =
  match e with
  | PrimExp (Var _) | PrimExp (SelectExp _) | PrimExp (IndexExp _) -> true
  | _ -> false
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
    let p_t_op = type_prim_exp p_exp env in
      let p_t = begin match p_t_op with
      | None -> raise (Exceptions.TypeError ("Cannot index expression '" ^ Prettyp.prim_exp_str p_exp 0 ^ "'", l))
      | Some t -> t
      end in
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
  | SliceExp (p_exp, e_s, e_e, e_m_op, l) ->
    let p_exp_t_op = type_prim_exp p_exp env in
    let p_exp_t = begin match p_exp_t_op with
    | Some (SliceType t) -> SliceType t
    | Some t -> raise (Exceptions.TypeError ("The expression '" ^ Prettyp.prim_exp_str p_exp 0 ^ "' of type " ^ Prettyp.typeT_str t 0 ^ " cannot be sliced", l))
    | None -> raise (Exceptions.TypeError ("The expression '" ^ Prettyp.prim_exp_str p_exp 0 ^ "' cannot be sliced", l))
    end in
    let check_int_type e =
      match type_exp e env with
      | Some (IntType) -> ()
      | Some t -> raise (Exceptions.TypeError ("The expression '" ^ Prettyp.exp_str e 0 ^ "' must have type int. Got '" ^ Prettyp.typeT_str t 0 ^ "'", l))
      | None -> raise (Exceptions.TypeError ("The expression '" ^ Prettyp.exp_str e 0 ^ "' must have type int. Got no type", l))
    in
      check_int_type e_s;
      check_int_type e_e;
      begin match e_m_op with
      | None -> ()
      | Some e_m -> check_int_type e_m
      end;
      Some p_exp_t
  | LenExp (p_exp, l) | CapExp (p_exp, l) ->
    let p_exp_t_op = type_prim_exp p_exp env in
    let p_exp_t = begin match p_exp_t_op with
    | None -> raise (Exceptions.TypeError ("Invalid argument type 'None' for len", l))
    | Some t -> t
    end in
      begin match p_exp_t with
      | SliceType _ | ArrayType _ -> Some IntType
      | _ -> raise (Exceptions.TypeError ("Invalid argument type '" ^ Prettyp.typeT_str p_exp_t 0 ^ "' for len", l))
      end
  | AppendExp (p_exp, e, l) ->
    let p_exp_t_op = type_prim_exp p_exp env in
      let e_t_op = type_exp e env in
        begin match p_exp_t_op with
        | None -> raise (Exceptions.TypeError ("Expression '" ^ Prettyp.prim_exp_str p_exp 0 ^ "' must be of type slice", l))
        | Some (SliceType t) ->
          let e_t = begin match e_t_op with
          | None -> raise (Exceptions.TypeError ("Expression '" ^ Prettyp.exp_str e 0 ^ "' should be of type '" ^ Prettyp.typeT_str t 0 ^ "'", l))
          | Some t -> t
          end in
            if t = e_t then
              Some (SliceType t)
            else
              raise (Exceptions.TypeError ("Type mismatch. Element to be appended myst be of type '" ^ Prettyp.typeT_str t 0 ^ "'. Got '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
        | Some t -> raise (Exceptions.TypeError ("Expression '" ^ Prettyp.prim_exp_str p_exp 0 ^ "' must be of type slice. Got '" ^ Prettyp.typeT_str t 0 ^ "'", l))
        end
  | CastExp (t, e, l) ->
    let e_t_op = type_exp e env in
      let e_t = 
        begin match e_t_op with
        | None -> raise (Exceptions.TypeError ("Cannot cast the expression '" ^ Prettyp.exp_str e 0 ^ "' as it has no value", l))
        | Some t -> t
        end in
          if e_t = t then
            Exceptions.new_warning (Exceptions.Warning ("The cast to type '" ^ Prettyp.typeT_str t 0 ^ "' is unecessary.", l));
          let t_u = resolve_type t in
          let e_t_u = resolve_type e_t in
          if is_numeric t_u && is_numeric e_t_u then
            Some t
          else if t_u = e_t_u then
            Some t
          else
            raise (Exceptions.TypeError ("Cannot cast type '" ^ Prettyp.typeT_str e_t 0 ^ "' into '" ^ Prettyp.typeT_str t 0 ^ "'", l))
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

let typecheck_var_decl v_decl env =
  (* Add the decl to the environement *)
  Env.var_decl env v_decl;
  match v_decl with
  | VarDeclTypeInit (t, id, e, l) ->
    let e_t_op = type_exp e env in
      let e_t = begin match e_t_op with
      | None -> raise (Exceptions.TypeError ("Type mismatch. Expression '" ^ Prettyp.exp_str e 0 ^ "' is not of type '" ^ Prettyp.typeT_str t 0 ^ "'", l))
      | Some t -> t
      end in
        if t = e_t then ()
        else
          raise (Exceptions.TypeError ("Type mismatch. Expression '" ^ Prettyp.exp_str e 0 ^ "' should be type '" ^ Prettyp.typeT_str t 0 ^ "'. Got '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
  | VarDeclNoTypeInit (_, _, l) -> failwith ("Line " ^ string_of_int l ^ "\nDeclaration '" ^ Prettyp.var_decl_str v_decl 0 ^ "' never got its type resolved at weeding time")
  | VarDeclTypeNoInit _ -> ()
;;

(*
Typecheck the statement.
Return true if the statement returns, false otherwise
return_t_op is the expected return type option in scope
*)
let rec typecheck_stm stm env return_t_op =
  match stm with
  | TypeDeclStm t_decl ->
    (* Add the declaration to the environement *)
    Env.type_decl env t_decl;
    false
  | VarDeclStm v_decl ->
    typecheck_var_decl v_decl env;
    false
  | Return (None, l) ->
    begin match return_t_op with
    | None -> true
    | Some t -> raise (Exceptions.TypeError ("Expected return expression of type '" ^ Prettyp.typeT_str t 0 ^ "'", l))
    end
  | Return (Some e, l) ->
    let e_t_op = type_exp e env in
    begin match e_t_op, return_t_op with
    | None, _ -> raise (Exceptions.TypeError ("Cannot use '" ^ Prettyp.exp_str e 0 ^ "' as a value", l))
    | Some e_t, None -> raise (Exceptions.TypeError ("Expected no return expression", l))
    | Some e_t, Some return_t ->
      if e_t = return_t then
        true
      else
       raise (Exceptions.TypeError ("Expected return type '" ^ Prettyp.typeT_str return_t 0 ^ "'. Got '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
    end
  | Break -> false
  | Continue -> false
  | ExpStm (e, l) ->
    let e_t_op = type_exp e env in
    begin match e with
    | PrimExp (FuncCall _) -> false
    | _ ->
      begin match e_t_op with
      | None -> false
      | Some _ -> raise (Exceptions.TypeError ("'" ^ Prettyp.exp_str e 0 ^ "' evaluated but not used", l))
      end
    end
  | AssignStm (lhs, rhs, l) ->
  if is_assignable lhs then
    (let lhs_t_op = type_exp lhs env in
      let rhs_t_op = type_exp rhs env in
        let lhs_t = begin match lhs_t_op with
        | None -> failwith "The left hand side should never be void since we chench for assignability"
        | Some t -> t
        end in
          let rhs_t = begin match rhs_t_op with
          | None -> raise (Exceptions.TypeError ("Cannot use '" ^ Prettyp.exp_str rhs 0 ^ "' as a value", l))
          | Some t -> t
          end in
          if lhs_t = rhs_t then false
          else raise (Exceptions.TypeError ("Type mismatch. Cannot assign type '" ^ Prettyp.typeT_str rhs_t 0 ^ "' to '" ^ Prettyp.typeT_str lhs_t 0 ^ "'", l))
    )
  else
    raise (Exceptions.SyntaxError ("The expression '" ^ Prettyp.exp_str lhs 0 ^ "' is not assignable", Some l))
  | Print (e, _ , l) ->
    let e_t_op = type_exp e env in
      let _ = begin match e_t_op with
      | None -> raise (Exceptions.TypeError ("Cannot use expression '" ^ Prettyp.exp_str e 0 ^ "' as value", l))
      | Some t -> t
      end in
        false
  | BlockStm b -> typecheck_block b env return_t_op
  | IfStm (e, b, e_b_op, l) ->
    begin match type_exp e env with
    | None -> raise (Exceptions.TypeError ("The condition expression must be of type bool", l))
    | Some BoolType -> ()
    | Some t -> raise (Exceptions.TypeError ("The condition expression must be of type bool. Got '" ^ Prettyp.typeT_str t 0 ^ "'", l))
    end;
    let b_ret = typecheck_block b env return_t_op in
      begin match e_b_op with
      | None -> false (* Since it is not guaranteed to enter the if *)
      | Some e_b ->
        let e_b_ret = typecheck_block e_b env return_t_op in
          b_ret = e_b_ret
      end
  | WhileStm (e_op, b, l) ->
      begin match e_op with
      | None ->
        typecheck_block b env return_t_op
      | Some e ->
        let e_t_op = type_exp e env in
          let e_t = begin match e_t_op with
          | None -> raise (Exceptions.TypeError ("Expected condition of type bool", l))
          | Some t -> t
          end in
            if e_t = BoolType then
              let _ = typecheck_block b env return_t_op in
                false
            else
              raise (Exceptions.TypeError ("Expected condition of type bool. Got '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      end
  | ForStm (init_op, e_op, inc_op, b, l) ->
    begin match init_op, inc_op with
    | None, None -> ()
    | Some init, None -> let _ = typecheck_stm init env return_t_op in ()
    | None, Some inc -> let _ = typecheck_stm inc env return_t_op in ()
    | Some init, Some inc -> let _ = (typecheck_stm init env return_t_op, typecheck_stm inc env return_t_op) in ()
    end;
    begin match e_op with
      | None ->
        typecheck_block b env return_t_op
      | Some e ->
        let e_t_op = type_exp e env in
          let e_t = begin match e_t_op with
          | None -> raise (Exceptions.TypeError ("Expected condition of type bool", l))
          | Some t -> t
          end in
            if e_t = BoolType then
              let _ = typecheck_block b env return_t_op in
                false
            else
              raise (Exceptions.TypeError ("Expected condition of type bool. Got '" ^ Prettyp.typeT_str e_t 0 ^ "'", l))
      end
(* return_t_op is the expected return type option in scope *)
and typecheck_block b env return_t_op =
  match b with
  | StmsBlock (stms, _) ->
    let new_scope = Env.push_scope env in
      type_stms_list stms new_scope return_t_op
(*
The type of statement list will be Some t if there is a return statement
at the end of the list
return_t_op is the expected return type option in scope
*)
and type_stms_list stms env return_t_op =
  match stms with
  | [] -> false
  | stm::stms' ->
    let stms_return = typecheck_stm stm env return_t_op in
    if not (stms_return) then
      type_stms_list stms' env return_t_op
    else true
;;

let typecheck_func f_decl env =
  match f_decl with
  | FuncDecl (name, in_list, out_opt, StmsBlock (stms, _), l) ->
    let func_env = Env.open_function_scope env f_decl in
      let ret = type_stms_list stms func_env out_opt in
        begin match ret, out_opt with
        | false, None | true, Some _ -> ()
        | false, Some t -> raise (Exceptions.TypeError ("Not all code paths return type '" ^ Prettyp.typeT_str t 0 ^ "' in function '" ^ name ^ "'", l))
        | true, None -> failwith ("Line " ^ string_of_int l ^ "\nTypecheckof body did not catch incorrect non void return")
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
