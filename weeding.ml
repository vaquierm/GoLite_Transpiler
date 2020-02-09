(*
This file weeds the AST and resolves all uncertainties
that could not be captured by the context free grammar.

For example resolves, the uncertainties when seeing foo(exp)
the parser does not know if this is a function call foo with
one argument exp, or if it is a type cast to the defined type foo

This step also ensures that the variables are initialized before being accessed
And throws warnings if declarations are never referenced.

Finally, this also resolves the underlying type of defined types
*)

open Ast
open Typecheck

(* Weed the variable declaration *)
let weed_var_decl d env =
  let weeded_decl = match d with
  | VarDeclNoTypeInit (id, e, l) -> VarDeclTypeInit (type_exp e, id, e, l)
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
  let weeded_decls = weed_top_decls' decls in
    let weeded_all_decls = weed_top_func_decls weeded_decls in
    if List.length env != 1 then
      failwith ("The environement must be of length 1 after weeding top level. Instead is is of length " ^ string_of_int (List.length env))
    else
      Env.warn_unused (List.hd env);
      weeded_all_decls
;;

let weed_program prog =
  match prog with
  | Program (pkg, decls) -> Program (pkg, weed_top_decls decls)
;;