(* 
This file contains all types and helper functions
for the scope and environement
*)

open Ast
open Typecheck

exception NotInitializedVar

type scope = {
  (* Types declared in this scope: (type name, underlying type, used) *)
  mutable t: (string * typeT * bool) list;
  (* Vars declared in this scope: (var name, type, used, initialized) *)
  mutable v: (string * typeT * bool * bool) list;
  (* funcs declared in this scope: (func name, inputs types, return type, used) *)
  mutable f: (string * typeT list * typeT option * bool) list;
}

type env = scope list

let empty_scope = {
  t = [];
  v = [];
  f = [];
}
;;

let list_to_string l f =
  List.fold_left (fun acc e -> acc ^ f e ^ ", ") "" l
;;

let print_scope s =
  let t_str = list_to_string s.t (fun (id, t, u) -> "(" ^ id ^ ", " ^ Prettyp.typeT_str t 0 ^ ", " ^ string_of_bool u ^ ")") in
  let v_str = list_to_string s.v (fun (id, t, u, i) -> "(" ^ id ^ ", " ^ Prettyp.typeT_str t 0 ^ ", " ^ string_of_bool u ^ ", " ^ string_of_bool i ^ ")") in
  let f_str = list_to_string s.f (fun (id, t_l, t_r, u) -> "(" ^ id ^ ", [" ^ (list_to_string t_l (fun t -> Prettyp.typeT_str t 0)) ^ "], " ^ (match t_r with None -> "void" | Some t -> Prettyp.typeT_str t 0) ^ ", " ^ string_of_bool u ^ ")") in
  print_string ("{\nT: " ^ t_str ^ "\nV: " ^ v_str ^ "\nF: " ^ f_str ^ "\n}\n")
;;

let rec print_env env =
  match env with
  | s::env' ->  print_scope s; print_env env'
  | [] -> ()
;;

let empty_env = [empty_scope]
;;

let push_scope env = empty_scope :: env
;;

let pop_scope env =
  if List.length env < 2 then
    failwith ("Cannot pop scope from env of lenght: " ^ string_of_int (List.length env))
  else List.tl env
;;

(* 
Get the type of this variable id
If the ass is true, the var will be marked as initialized in the env
This will also mark the var as used
*)
let get_var id s ass =
  let v = ref None in
  let rec get_var' vars =
    match vars with
    | [] -> []
    | (id', t, used, init) :: vars' when id' = id ->
      v := Some t;
      if not(ass) && not(init) then
        raise NotInitializedVar
      else
        (id', t, true, (if ass then true else init)) :: vars'
    | v'::vars' -> v'::(get_var' vars')
  in
  s.v <- get_var' s.v;
  !v
;;

(* 
Get the type signature of this function
This will mark the func as used
*)
let get_func id s =
  let f = ref None in
  let rec get_func' funcs =
    match funcs with
    | [] -> []
    | (id', in_t, r_t, _) :: funcs' when id' = id ->
      f := Some (in_t, r_t);
      (id', in_t, r_t, true) :: funcs'
    | v'::funcs' -> v'::(get_func' funcs')
  in
  s.f <- get_func' s.f;
  !f
;;

(* 
Get the underlying type of a defined type
This will mark the type as used
*)
let get_type id s =
  let t = ref None in
  let rec get_type' types =
    match types with
    | [] -> []
    | (id', t', _) :: types' when id' = id ->
      t := Some t';
      (id', t', true) :: types'
    | v'::types' -> v'::(get_type' types')
  in
  s.t <- get_type' s.t;
  !t
;;


(* Check if an ID already exists in this scope, if so thow an exception *)
let check_exists s id l =
    let var_exist = List.exists (fun (id', _, _, _) -> id' = id) s.v in
    let type_exists = List.exists (fun (id', _, _) -> id' = id) s.t in
    let func_exists = List.exists (fun (id', _, _, _) -> id' = id) s.f in
    if var_exist then
      raise (Exceptions.SyntaxError ("A variable with name '" ^ id ^ "' already exisits in this scope", Some l))
    else if type_exists then
      raise (Exceptions.SyntaxError ("A type with name '" ^ id ^ "' already exisits in this scope", Some l))
    else if func_exists then
      raise (Exceptions.SyntaxError ("A function with name '" ^ id ^ "' already exisits in this scope", Some l))
    else ()
;;

let var_decl env v_decl =
  print_env env;
  let def_l = ref 0 in
  let v_tup = match v_decl with
  | VarDeclTypeInit (t, id, _, l) -> def_l := l; (id, t, false, true)
  | VarDeclNoTypeInit (id, e, l) -> def_l := l; (id, type_exp e, false, true)
  | VarDeclTypeNoInit (t, id, l) -> def_l := l; (id, t, false, false)
  in
  let (id, _, _ , _) = v_tup in
    if List.length env = 0 then
      failwith "The environement is empty"
    else
      let s = List.hd env in
      check_exists s id !def_l;
      s.v <- (v_tup :: s.v)
;;
      


  