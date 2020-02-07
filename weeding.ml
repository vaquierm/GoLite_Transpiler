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

let weed_var_decl d env =
  let weeded_decl = match d with
  | VarDeclNoTypeInit (id, e, l) -> VarDeclTypeInit (type_exp e, id, e, l)
  | _ -> d
  in
  Env.var_decl env d;
  weeded_decl
;;

let weed_top_decls decls =
  let env = Env.empty_env in
  let rec weed_decls decls =
    match decls with
    | [] -> []
    | d::decls' ->
      begin match d with
      | TopVarDecl v_decl ->
        (TopVarDecl (weed_var_decl v_decl env))::(weed_decls decls')
      | _ -> d::(weed_decls decls')
      end;
  in
  weed_decls decls
;;

let weed_program prog =
  match prog with
  | Program (pkg, decls) -> Program (pkg, weed_top_decls decls)
;;