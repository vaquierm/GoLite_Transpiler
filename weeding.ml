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

(* Weed the variable declaration *)
let weed_var_decl d env =
  let weeded_decl = match d with
  | VarDeclNoTypeInit (id, e, l) -> VarDeclTypeInit (type_exp e, id, e, l)
  | VarDeclTypeInit (DefinedType (t_id, None), id, e, l) ->
    VarDeclTypeInit (DefinedType (t_id, Some (Env.get_type t_id env l)), id, e, l)
  | VarDeclTypeNoInit (DefinedType(t_id, None), id, l) ->
    VarDeclTypeNoInit (DefinedType (t_id, Some (Env.get_type t_id env l)), id, l)
  | _ -> d
  in
  Env.var_decl env d;
  weeded_decl
;;

(* Weed the type declaration *)
let weed_type_decl d env =
  let weeded_decl = match d with
  | TypeDecl (DefinedType (t_id, None), id, l) ->
    TypeDecl (DefinedType (t_id, Some (Env.get_type t_id env l)), id, l)
  | _ -> d
  in 
  Env.type_decl env d;
  weeded_decl
;;

(* Weed the function declaration but not the body *)
let weed_func_decl d env =
  let weeded_decl = 
    match d with FuncDecl (id, inputs, out_t_opt, b, l) ->
    let weeded_inputs = List.map (fun (id', t) -> 
      match t with
      | DefinedType (t_id, None) -> (id', DefinedType (t_id, Some (Env.get_type t_id env l)))
      | t -> (id', t)
      ) inputs
    in
    let weeded_out = 
      match out_t_opt with
      | Some (DefinedType (t_id, None)) -> Some (DefinedType (t_id, Some (Env.get_type t_id env l)))
      | _ -> out_t_opt
    in
    FuncDecl (id, weeded_inputs, weeded_out, b, l)
  in
  Env.func_decl env d;
  weeded_decl
;;

let weed_exp e env =
  match e with
  | _ -> e
;;

(* Weed the statement. Resolve any underlying types and make sure variables are referenced after init *)
let rec weed_statement stm env =
  match stm with
  | TypeDeclStm t_decl -> TypeDeclStm (weed_type_decl t_decl env)
  | VarDeclStm v_decl -> VarDeclStm (weed_var_decl v_decl env)
  | Return (Some e, l) -> Return (Some (weed_exp e env), l)
  | ExpStm (e, l) -> ExpStm (weed_exp e env, l)
  | AssignStm (lhs, rhs, l) -> AssignStm (weed_exp lhs env, weed_exp rhs env, l)
  | Print (e, new_l, l) -> Print (weed_exp e env, new_l, l)
  | BlockStm block -> BlockStm (weed_block block env)
  | IfStm (cond, b, e_b_opt, l) ->
    begin match e_b_opt with
    | None -> IfStm (weed_exp cond env, weed_block b env, None, l)
    | Some e_b -> IfStm (weed_exp cond env, weed_block b env, Some (weed_block e_b env), l)
    end
  | WhileStm (cond_opt, b, l) ->
    begin match cond_opt with
    | None -> WhileStm (None, weed_block b env, l)
    | Some cond -> WhileStm (Some (weed_exp cond env), weed_block b env, l)
    end
  | ForStm (init_opt, cond_opt, inc_opt, b, l) ->
    let new_env = Env.push_scope env in
    let weeded_init = begin match init_opt with
    | None -> None
    | Some init -> Some (weed_statement init new_env)
    end in
    let weeded_cond = begin match cond_opt with
    | None -> None
    | Some cond -> Some (weed_exp cond new_env)
    end in
    let weeded_inc = begin match inc_opt with
    | None -> None
    | Some inc -> Some (weed_statement inc new_env)
    end in
    let weeded_for_stm = ForStm(weeded_init, weeded_cond, weeded_inc, weed_block b new_env, l) in
      Env.pop_scope new_env;
      weeded_for_stm
  | _ -> stm
and weed_block b env =
  match b with
  | StmsBlock stms ->
    let new_scope = Env.push_scope env in
      let weeded_block = StmsBlock (weed_statements stms new_scope) in
        Env.pop_scope new_scope;
        weeded_block
and weed_statements stms env =
  match stms with
  | [] -> []
  | s::stms' -> (weed_statement s env)::(weed_statements stms' env)
;;

(*
Weed the function body
Open a new scope, insert the inputs in this new scope
Weed all statements in the body
*)
let weed_func_body f env =
  match f with
  | FuncDecl (name, in_list, out_opt, StmsBlock stms, l) ->
    let func_env = Env.open_function_scope env f in
      let weeded_func = FuncDecl (name, in_list, out_opt, StmsBlock (weed_statements stms func_env), l) in
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
  let env = Env.empty_env in
  let rec weed_top_decls' decls =
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | TopVarDecl v_decl ->
        (TopVarDecl (weed_var_decl v_decl env))::(weed_top_decls' decls')
      | TopTypeDecl t_decl ->
        (TopTypeDecl (weed_type_decl t_decl env)::(weed_top_decls' decls'))
      | _ -> d::(weed_top_decls' decls')
      end;
  in
  let rec weed_top_func_decls decls = 
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | TopFuncDecl f_decl ->
        (TopFuncDecl (weed_func_decl f_decl env))::(weed_top_func_decls decls')
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