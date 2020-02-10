(* 
This file contains all types and helper functions
for the scope and environement
*)

open Ast
open Typecheck

exception NotInitializedVar

type scope = {
  (* Types declared in this scope: (type name, underlying type, used, line num) *)
  mutable t: (string * typeT * bool * int) list;
  (* Vars declared in this scope: (var name, type, used, initialized, line num) *)
  mutable v: (string * typeT * bool * bool * int) list;
  (* funcs declared in this scope: (func name, inputs types, return type, used, line num) *)
  mutable f: (string * typeT list * typeT option * bool * int) list;
}

type env = scope list

let empty_scope () = {
  t = [];
  v = [];
  f = [];
}
;;

let list_to_string l f =
  List.fold_left (fun acc e -> acc ^ f e ^ ", ") "" l
;;

let print_scope s =
  let t_str = list_to_string s.t (fun (id, t, u, l) -> "(" ^ id ^ ", " ^ Prettyp.typeT_str t 0 ^ ", " ^ string_of_bool u ^ ", " ^ string_of_int l ^ ")") in
  let v_str = list_to_string s.v (fun (id, t, u, i, l) -> "(" ^ id ^ ", " ^ Prettyp.typeT_str t 0 ^ ", " ^ string_of_bool u ^ ", " ^ string_of_bool i ^ ", " ^ string_of_int l ^ ")") in
  let f_str = list_to_string s.f (fun (id, t_l, t_r, u, l) -> "(" ^ id ^ ", [" ^ (list_to_string t_l (fun t -> Prettyp.typeT_str t 0)) ^ "], " ^ (match t_r with None -> "void" | Some t -> Prettyp.typeT_str t 0) ^ ", " ^ string_of_bool u ^ ", " ^ string_of_int l ^ ")") in
  print_string ("{\nT: " ^ t_str ^ "\nV: " ^ v_str ^ "\nF: " ^ f_str ^ "\n}\n")
;;

let rec print_env env =
  print_string "Printing env\n";
  let rec print_env' env =
    match env with
    | s::env' ->  print_scope s; print_env' env'
    | [] -> print_string "\n"
  in
  print_env' env
;;

let empty_env = [empty_scope ()]
;;

let push_scope env = (empty_scope ()) :: env
;;

(* Go through all variables, types and func of the scope and checks if any declarations were unused *)
let warn_unused s =
  let rec warn_v vs =
    match vs with
    | [] -> ()
    | (id, _, used, _, l)::vs' ->
      if not (used) then
        Exceptions.new_warning (Exceptions.Warning ("The variable " ^ id ^ " was declared and never referenced", l));
      warn_v vs'
  in
  let rec warn_t ts =
    match ts with
    | [] -> ()
    | (id, _, used, l)::ts' ->
      if not (used) then
        Exceptions.new_warning (Exceptions.Warning ("The type " ^ id ^ " was declared and never referenced", l));
      warn_t ts'
  in
  let rec warn_f fs =
    match fs with
    | [] -> ()
    | (id, _, _, used, l)::fs' ->
      if not(id = "main") && not (used) then
        Exceptions.new_warning (Exceptions.Warning ("The function " ^ id ^ " was declared and never referenced", l));
      warn_f fs'
  in
  warn_v s.v;
  warn_t s.t;
  warn_f s.f
;;

let pop_scope env =
  if List.length env = 2 then
    failwith ("Cannot pop scope from env of lenght: " ^ string_of_int (List.length env))
  else 
    warn_unused (List.hd env);
    List.tl env
;;

(* 
Get the type of this variable id
If the ass is true, the var will be marked as initialized in the env
This will also mark the var as used
*)
let get_var_s id s ass =
  let v = ref None in
  let rec get_var' vars =
    match vars with
    | [] -> []
    | (id', t, used, init, l) :: vars' when id' = id ->
      v := Some t;
      if not(ass) && not(init) then
        raise NotInitializedVar
      else
        (id', t, true, (if ass then true else init), l) :: vars'
    | v'::vars' -> v'::(get_var' vars')
  in
  s.v <- get_var' s.v;
  !v
;;

(* 
Get the type signature of this function
This will mark the func as used
*)
let get_func_s id s =
  let f = ref None in
  let rec get_func' funcs =
    match funcs with
    | [] -> []
    | (id', in_t, r_t, _, l) :: funcs' when id' = id ->
      f := Some (in_t, r_t);
      (id', in_t, r_t, true, l) :: funcs'
    | v'::funcs' -> v'::(get_func' funcs')
  in
  s.f <- get_func' s.f;
  !f
;;

(* Get the type from an id in the scope *)
let get_type_s id s =
  let t = ref None in
  let rec get_type' types =
    match types with
    | [] -> []
    | (id', t', _, l) :: types' when id' = id ->
      t := Some t';
      (id', t', true, l) :: types'
    | v'::types' -> v'::(get_type' types')
  in
  s.t <- get_type' s.t;
  !t
;;

(* Get the type from an id in the env *)
let rec get_type id env l =
  match env with
  | [] -> raise (Exceptions.SyntaxError ("The type '" ^ id ^ "' was never defined", Some l))
  | s::env' ->
    let t_opt = get_type_s id s in
    begin match t_opt with
    | None -> get_type id env' l
    | Some t -> t
    end
;;

(* Check if an ID already exists in this scope, if so thow an exception *)
let check_exists s id l =
  let def_l = ref 0 in
  let var_exist = List.exists (fun (id', _, _, _, l') -> if id' = id then (def_l := l'; true) else false) s.v in
  let type_exists = List.exists (fun (id', _, _, l') -> if id' = id then (def_l := l'; true) else false) s.t in
  let func_exists = List.exists (fun (id', _, _, _, l') -> if id' = id then (def_l := l'; true) else false) s.f in
  if var_exist then
    raise (Exceptions.SyntaxError ("A variable with name '" ^ id ^ "' was already defined in this scope on line " ^ string_of_int (!def_l), Some l))
  else if type_exists then
    raise (Exceptions.SyntaxError ("A type with name '" ^ id ^ "' was already defined in this scope on line " ^ string_of_int (!def_l), Some l))
  else if func_exists then
    raise (Exceptions.SyntaxError ("A function with name '" ^ id ^ "' was already defined in this scope on line " ^ string_of_int (!def_l), Some l))
  else ()
;;

let open_function_scope env f =
  match f with
  | FuncDecl (_, inputs, _, _, l) ->
    let func_scope = empty_scope () in
      func_scope.v <- List.map (fun (id, t) -> (id, t, false, true, l)) inputs;
      func_scope :: env
;;

let var_decl env v_decl =
  (* print_env env;*)
  let v_tup = match v_decl with
  | VarDeclTypeInit (t, id, _, l) -> (id, t, false, true, l)
  | VarDeclNoTypeInit (id, e, l) -> (id, type_exp e, false, true, l)
  | VarDeclTypeNoInit (t, id, l) -> (id, t, false, false, l)
  in
  let (id, _, _, _, l) = v_tup in
    if List.length env = 0 then
      failwith "The environement is empty"
    else
      let s = List.hd env in
      check_exists s id l;
      s.v <- (v_tup :: s.v)
;;

let type_decl env t_decl =
  (* print_env env;*)
  let t_tup = match t_decl with
  | TypeDecl (t, id, l) -> (id, t, false, l)
  in
  let (id, _, _, l) = t_tup in
    if List.length env = 0 then
      failwith "The environement is empty"
    else
      let s = List.hd env in
      check_exists s id l;
      s.t <- (t_tup :: s.t)
;;
      
let func_decl env f_decl =
  (* print_env env;*)
  let f_tup = match f_decl with
  | FuncDecl (id, inputs, out_opt, _, l) -> (id, List.map snd inputs, out_opt, false, l)
  in
  let (id, _, _, _, l) = f_tup in
  if List.length env = 0 then
    failwith "The environement is empty"
  else
    let s = List.hd env in
    check_exists s id l;
    s.f <- (f_tup :: s.f)
;;

  