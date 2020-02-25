(*
This file weeds the AST and resolves all uncertainties
that could not be captured by the context free grammar.

For example resolves, the uncertainties when seeing foo(exp)
the parser does not know if this is a function call foo with
one argument exp, or if it is a type cast to the defined type foo

This step also ensures that the variables are initialized before being accessed
And throws warnings if declarations are never referenced.

Prevents different function inputs to have the same name

Finally, this also resolves the underlying type of defined types
*)

open Ast
open Typecheck

(* Checks if the rexpresison can be assigned to *)
let is_assignable e =
  match e with
  | PrimExp (Var _) | PrimExp (SelectExp _) | PrimExp (IndexExp _) -> true
  | _ -> false
;;

(* Weed the type and resolve Underlying defined types *)
let rec weed_type t env =
  match t with
  | DefinedType (id, None, l) -> Env.get_type id env l
  | ArrayType (t', e, l) -> let weeded_exp = weed_exp e env in
    begin match weeded_exp with
    | PrimExp (IntLit _) -> ArrayType (weed_type t' env, weeded_exp, l)
    | _ -> raise (Exceptions.SyntaxError ("The size of the array must be an integer literal", Some l))
    end
  | SliceType t' -> SliceType (weed_type t' env)
  | PointerType t' -> PointerType (weed_type t' env)
  | StructType (fields, l) ->
    let rec weed_fields acc fields' =
      begin match fields' with
      | [] -> acc
      | (id, t)::fields'' -> 
        if List.exists (fun (id', t') -> id = id') fields'' then
          raise (Exceptions.SyntaxError ("Multiple fields with name '" ^ id ^ "' defined in struct", Some l))
        else
          weed_fields ((id, weed_type t env)::acc) fields''
      end
    in
      StructType (weed_fields [] fields, l)
  | IntType | FloatType | StrType | RuneType | BoolType | DefinedType _ -> t
and weed_exp e env =
  match e with
  | Binop (e1, op, e2, l) -> Binop (weed_exp e1 env, op, weed_exp e2 env, l)
  | Unary (op, e, l) -> Unary (op, weed_exp e env, l)
  | PrimExp p_exp ->
      let weeded_p_exp = weed_prim_exp p_exp env in
        begin match weeded_p_exp with
        | CastExp (t, e, l) -> (* This case is to remove all unecessary casts *)
          let e_t_op = type_exp e env in
            let e_t = begin match e_t_op with
              | None -> raise (Exceptions.TypeError ("Cannot cast the expression '" ^ Prettyp.exp_str e 0 ^ "' as it has no value", l))
              | Some t -> t
              end in
                if e_t = t then
                  begin
                    Exceptions.new_warning (Exceptions.Warning ("The cast to type '" ^ Prettyp.typeT_str t 0 ^ "' is unecessary.", l));
                    e (* The cast was useless, just return the inner expression *)
                  end
                else
                  PrimExp (weeded_p_exp)
        | _ -> PrimExp (weeded_p_exp)
        end
and weed_prim_exp p_exp env =
  match p_exp with
  | Var (x, l) -> let _ = Env.get_var x env l in p_exp
  | CastExp (t, e, l) ->
    CastExp (weed_type t env, weed_exp e env, l)
  | SelectExp (p_exp', field, l) -> SelectExp (weed_prim_exp p_exp' env, field, l)
  | IndexExp (p_exp', e, l) -> IndexExp (weed_prim_exp p_exp' env, weed_exp e env, l)
  | FuncCall (name, e_list, l) -> let _ = Env.get_func name env l in FuncCall (name, List.map (fun e -> weed_exp e env) e_list, l)
  | SliceExp (p_exp', e_b, e_e, e_m_opt, l) ->
      let weeded_e_m = begin match e_m_opt with
      | None -> None
      | Some e_m -> Some (weed_exp e_m env)
      end in
      SliceExp (weed_prim_exp p_exp' env, weed_exp e_b env, weed_exp e_e env, weeded_e_m, l)
  | UnsureTypeFuncCall (id, e, l) ->
      begin try
        let t = Env.get_type id env l in
          weed_prim_exp (CastExp (t, weed_exp e env, l)) env
      with
        | Exceptions.SyntaxError _ ->
          let _ = Env.get_func id env l in
            FuncCall (id, [weed_exp e env], l)
      end
  | AppendExp (p_exp', e, l) -> AppendExp (weed_prim_exp p_exp' env, weed_exp e env, l)
  | LenExp (p_exp', l) -> LenExp (weed_prim_exp p_exp' env, l)
  | CapExp (p_exp', l) -> CapExp (weed_prim_exp p_exp' env, l)
  | FloatLit _ | IntLit _ | RuneLit _ | StrLit _ | BoolLit _ -> p_exp
;;

(* Weed the variable declaration *)
let weed_var_decl d env =
  let weeded_decl = match d with
  | VarDeclNoTypeInit (id, e, l) ->
    let weeded_e = weed_exp e env in
      let weeded_t_op = type_exp weeded_e env in
        let weeded_t =
          begin match weeded_t_op with
          | None -> raise (Exceptions.TypeError ("Cannot initialize variable '" ^ id ^ "' with expression '" ^ Prettyp.exp_str e 0 ^ "' that has no type.", l))
          | Some t -> t
          end in
      VarDeclTypeInit (weeded_t, id, weeded_e, l)
  | VarDeclTypeInit (t, id, e, l) -> VarDeclTypeInit (weed_type t env, id, weed_exp e env, l)
  | VarDeclTypeNoInit (t, id, l) -> VarDeclTypeNoInit (weed_type t env, id, l)
  in
  Env.var_decl env weeded_decl;
  weeded_decl
;;

(* Weed the type declaration *)
let weed_type_decl d env =
  let weeded_decl = match d with
  | TypeDecl (t, id, l) -> TypeDecl (weed_type t env, id, l)
  in 
  Env.type_decl env weeded_decl;
  weeded_decl
;;

(* Weed the function declaration but not the body *)
let weed_func_decl d env =
  let weeded_decl = 
    match d with FuncDecl (id, inputs, out_t_opt, b, l) when not (id = "main") ->
    let weeded_inputs = List.map (fun (id', t) -> (id', weed_type t env)) inputs
    in
    let weeded_out = 
      begin match out_t_opt with
      | Some t -> Some (weed_type t env)
      | None -> None
      end
    in
    FuncDecl (id, weeded_inputs, weeded_out, b, l)
    | _ -> d
  in
  Env.func_decl env weeded_decl;
  weeded_decl
;;

(*
Weed the statement.
Resolve any underlying types and make sure variables are referenced after init
The argument 'return_t_op' is the return type of the scope
The argument 'in_loop' is a bool that indicates if the statement is part of a loop or not. (To know if continue and break statements are allowed)
*)
let rec weed_statement stm env return_t_op in_loop =
  match stm with
  | TypeDeclStm t_decl -> TypeDeclStm (weed_type_decl t_decl env)
  | VarDeclStm v_decl -> VarDeclStm (weed_var_decl v_decl env)
  | Return (Some e, l) -> Return (Some (weed_exp e env), l)
  | ExpStm (e, l) -> ExpStm (weed_exp e env, l)
  | AssignStm (lhs, rhs, l) ->
    if is_assignable lhs then
      AssignStm (weed_exp lhs env, weed_exp rhs env, l)
    else
      raise (Exceptions.SyntaxError ("The expression '" ^ Prettyp.exp_str lhs 0 ^ "' is not assignable", Some l))
  | Print (e, new_l, l) -> Print (weed_exp e env, new_l, l)
  | BlockStm block -> BlockStm (weed_block block env return_t_op in_loop)
  | IfStm (cond, b, e_b_opt, l) ->
    begin match e_b_opt with
    | None -> IfStm (weed_exp cond env, weed_block b env return_t_op in_loop, None, l)
    | Some e_b -> IfStm (weed_exp cond env, weed_block b env return_t_op in_loop, Some (weed_block e_b env return_t_op in_loop), l)
    end
  | WhileStm (cond_opt, b, l) ->
    begin match cond_opt with
    | None -> WhileStm (None, weed_block b env return_t_op true, l)
    | Some cond -> WhileStm (Some (weed_exp cond env), weed_block b env return_t_op true, l)
    end
  | ForStm (init_opt, cond_opt, inc_opt, b, l) ->
    let new_env = Env.push_scope env in
    let weeded_init = begin match init_opt with
    | None -> None
    | Some init -> Some (weed_statement init new_env return_t_op false)
    end in
    let weeded_cond = begin match cond_opt with
    | None -> None
    | Some cond -> Some (weed_exp cond new_env)
    end in
    let weeded_inc = begin match inc_opt with
    | None -> None
    | Some (VarDeclStm _) -> raise (Exceptions.SyntaxError ("Cannot have short assign statement in loop increment statement", Some l))
    | Some inc -> Some (weed_statement inc new_env return_t_op false)
    end in
    let weeded_for_stm = ForStm(weeded_init, weeded_cond, weeded_inc, weed_block b new_env return_t_op true, l) in
      Env.pop_scope new_env;
      weeded_for_stm
  | Break l ->
    if in_loop then stm
    else raise (Exceptions.SyntaxError ("Break statement not in loop", Some l))
  | Continue l ->
    if in_loop then stm
    else raise (Exceptions.SyntaxError ("Continue statement not in loop", Some l))
  | Return (None, _) -> stm
and weed_block b env return_t_op in_loop =
  match b with
  | StmsBlock (stms, b_line) ->
    let new_scope = Env.push_scope env in
      let weeded_block = StmsBlock (weed_statements stms new_scope return_t_op in_loop, b_line) in
        Env.pop_scope new_scope;
        weeded_block
and weed_statements stms env return_t_op in_loop =
  match stms with
  | [] -> []
  | s::stms' ->
    let copied_env = Env.copy_env env in
    let weeded_statement = (weed_statement s env return_t_op in_loop) in
      let stm_returns = Typecheck.typecheck_stm weeded_statement copied_env return_t_op in
      begin match stm_returns with
      | true ->
        let remain_len = List.length stms' in
        if remain_len > 0 then
          Exceptions.new_warning (Exceptions.Warning ("Unreachable statement(s) in this scope after this line", Ast.stm_endline s));
        [weeded_statement]
      | false -> weeded_statement::(weed_statements stms' env return_t_op in_loop)
      end
;;

(*
Weed the function body
Open a new scope, insert the inputs in this new scope
Weed all statements in the body
*)
let weed_func_body f env =
  match f with
  | FuncDecl (name, in_list, out_opt, StmsBlock (stms, b_line), l) ->
    let func_env = Env.open_function_scope env f in
      let weeded_func = FuncDecl (name, in_list, out_opt, StmsBlock (weed_statements stms func_env out_opt false, b_line), l) in
      Env.pop_scope func_env;
      weeded_func
;;

(*
Weed all top level declarations
Start with variables and types definitions
Next weed the function declarations
Finally weed inside the function bodies
*)
let weed_top_decls decls =
  let env = Env.empty_env () in
  let rec weed_top_decls' decls =
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | TopVarDecl v_decl ->
        let weeded_decl = weed_var_decl v_decl env in
          (TopVarDecl weeded_decl)::(weed_top_decls' decls')
      | TopTypeDecl t_decl ->
        let weeded_decl = weed_type_decl t_decl env in
          (TopTypeDecl weeded_decl)::(weed_top_decls' decls')
      | _ -> d::(weed_top_decls' decls')
      end;
  in
  let rec weed_top_func_decls decls = 
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | TopFuncDecl f_decl ->
        let weeded_decl = weed_func_decl f_decl env in
          (TopFuncDecl weeded_decl)::(weed_top_func_decls decls')
      | _ -> d::(weed_top_func_decls decls')
      end;
  in
  let rec weed_func_bodies decls =
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | TopFuncDecl f_decl ->
        (TopFuncDecl (weed_func_body f_decl env))::(weed_func_bodies decls')
      | _ -> d::(weed_func_bodies decls')
      end;
  in
  let weeded_decls = weed_top_decls' decls in
    let weeded_all_decls = weed_top_func_decls weeded_decls in
      let weeded_func_bodies = weed_func_bodies weeded_all_decls in
        if List.length env != 1 then
          failwith ("The environement must be of length 1 after weeding top level. Instead is is of length " ^ string_of_int (List.length env))
        else
          Env.warn_unused (List.hd env);
          weeded_func_bodies
;;

let weed_program prog =
  match prog with
  | Program (pkg, decls) -> Program (pkg, weed_top_decls decls)
;;