open Ast

(* Get a string containing n \t charachters *)
let indents n =
  let rec indents_tr n acc =
    if n = 0 then acc else indents_tr (n-1) ("\t" ^ acc)
  in
  indents_tr n ""
;;

let print_type_decl decl =
  match decl with
  | TypeDecl (t, name, _) ->
    print_endline ("type " ^ name ^ " TODOTYPE;")
;;

let print_top_level_decl decl =
  match decl with
  | TopTypeDecl type_decl -> print_type_decl type_decl
  | _ ->  ()
;;

let print_pkg pkg_clause =
  match pkg_clause with
  | Package name -> print_endline ("import " ^ name ^ ";")
;;

let print_program prog = 
  match prog with
  | Program (pkg_clause, decls) ->
    print_pkg pkg_clause;
    let _ = List.map print_top_level_decl decls in ()
;;