(* 
This file contains all types and helper functions
for the scope and environement
*)

open Ast

type scope = {
  (* Types declared in this scope: (type name, underlying type, used, line num) *)
  mutable t: (string * typeT * bool * int) list;
  (* Vars declared in this scope: (var name, type, used, line num) *)
  mutable v: (string * typeT * bool * int) list;
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
  let v_str = list_to_string s.v (fun (id, t, u, l) -> "(" ^ id ^ ", " ^ Prettyp.typeT_str t 0 ^ ", " ^ string_of_bool u ^ ", " ^ string_of_int l ^ ")") in
  let f_str = list_to_string s.f (fun (id, t_l, t_r, u, l) -> "(" ^ id ^ ", [" ^ (list_to_string t_l (fun t -> Prettyp.typeT_str t 0)) ^ "], " ^ (match t_r with None -> "void" | Some t -> Prettyp.typeT_str t 0) ^ ", " ^ string_of_bool u ^ ", " ^ string_of_int l ^ ")") in
  print_string ("{\nT: " ^ t_str ^ "\nV: " ^ v_str ^ "\nF: " ^ f_str ^ "\n}\n")
;;

let copy_scope s =
  let copied_s = empty_scope () in
    copied_s.t <- s.t;
    copied_s.v <- s.v;
    copied_s.f <- s.f;
    copied_s
;;

let copy_env env =
  let rec copy_env' env' =
    match env' with
    | [] -> []
    | s::env'' -> (copy_scope s)::(copy_env' env'')
  in
  copy_env' env
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

let empty_env () = [empty_scope ()]
;;

let push_scope env = (empty_scope ()) :: env
;;

(* Go through all variables, types and func of the scope and checks if any declarations were unused *)
let warn_unused s =
  let rec warn_v vs =
    match vs with
    | [] -> ()
    | (id, _, used, l)::vs' ->
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
  if List.length env < 2 then
    failwith ("Cannot pop scope from env of lenght: " ^ string_of_int (List.length env))
  else 
    warn_unused (List.hd env)
;;

(* 
Get the type of this variable id
This will also mark the var as used
*)
let get_var_s id s =
  let v = ref None in
  let rec get_var' vars =
    match vars with
    | [] -> []
    | (id', t, used, l) :: vars' when id' = id ->
      v := Some t;
      (id', t, true, l) :: vars'
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

(* Throw if the id exists in the scop and was not what we thought it was *)
let check_others s id expected l =
  let def_l = ref 0 in
  let var_exist = List.exists (fun (id', _, _, l') -> if id' = id then (def_l := l'; true) else false) s.v in
  let type_exists = List.exists (fun (id', _, _, l') -> if id' = id then (def_l := l'; true) else false) s.t in
  let func_exists = List.exists (fun (id', _, _, _, l') -> if id' = id then (def_l := l'; true) else false) s.f in
  if var_exist then
    raise (Exceptions.SyntaxError (id ^ " is not a " ^ expected ^ ", it is a variable declared on line " ^ string_of_int (!def_l), Some l))
  else if type_exists then
    raise (Exceptions.SyntaxError (id ^ " is not a " ^ expected ^ ", it is a type declared on line " ^ string_of_int (!def_l), Some l))
  else if func_exists then
    raise (Exceptions.SyntaxError (id ^ " is not a " ^ expected ^ ", it is a function declared on line " ^ string_of_int (!def_l), Some l))
  else ()
;;

(* Get the type from an id in the env *)
let rec get_type id env l =
  match env with
  | [] -> raise (Exceptions.SyntaxError ("The type '" ^ id ^ "' was never defined", Some l))
  | s::env' ->
    let t_opt = get_type_s id s in
    begin match t_opt with
    | None -> check_others s id "type" l; get_type id env' l
    | Some t -> t
    end
;;

(* Get the type of a variable in the environement *)
let rec get_var id env l =
  match env with
  | [] -> raise (Exceptions.SyntaxError ("The variable '" ^ id ^ "' was never defined", Some l))
  | s::env' ->
    let v_opt = get_var_s id s in
    begin match v_opt with
    | None -> check_others s id "variable" l; get_var id env' l
    | Some t -> t
    end
;;

(* Get the function input and output types from the environement *)
let rec get_func id env l =
  match env with
  | [] -> raise (Exceptions.SyntaxError ("The function '" ^ id ^ "' was never defined", Some l))
  | s::env' ->
    let f_opt = get_func_s id s in
    begin match f_opt with
    | None -> check_others s id "function" l; get_func id env' l
    | Some t -> t
    end
;;

(* Check if an ID already exists in this scope, if so thow an exception *)
let check_exists s id l =
  let def_l = ref 0 in
  let var_exist = List.exists (fun (id', _, _, l') -> if id' = id then (def_l := l'; true) else false) s.v in
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

(*
Create a new scope for the function body, add the arguments to the function in the scope
and return the new extended environemnt
*)
let open_function_scope env f =
  match f with
  | FuncDecl (name, inputs, _, _, l) ->
    let func_scope = empty_scope () in
      let rec build_inputs_scope acc inputs =
        match inputs with
        | [] -> acc
        | (id, t)::inputs' ->
          if List.exists (fun (id', _, _, _) -> id' = id) acc then
            raise (Exceptions.SyntaxError ("Multiple function arguments with the same name '" ^ id ^ "' in declaration of '" ^ name ^ "'", Some l))
          else
            build_inputs_scope ((id, t, false, l)::acc) inputs'
      in
      func_scope.v <- build_inputs_scope [] inputs;
      func_scope :: env
;;

let var_decl env v_decl =
  let v_tup = match v_decl with
  | VarDeclTypeInit (t, id, _, l) -> (id, t, false, l)
  | VarDeclTypeNoInit (t, id, l) -> (id, t, false, l)
  | VarDeclNoTypeInit (id, e, l) -> failwith "Cannot add variable to env without knowing type"
  in
  let (id, _, _, l) = v_tup in
    if List.length env = 0 then
      failwith "The environement is empty"
    else
      let s = List.hd env in
      check_exists s id l;
      s.v <- (v_tup :: s.v)
;;

let type_decl env t_decl =
  let t_tup = match t_decl with
  | TypeDecl (t, id, l) ->
    let underlying_type = begin match t with
    | DefinedType (id', _, _) -> get_type id' env l
    | _ -> t
    end in
    (id, DefinedType (id, Some underlying_type, l), false, l)
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
  let f_tup = match f_decl with
  | FuncDecl (id, inputs, out_opt, _, l) ->
    match out_opt with
    | Some (DefinedType (_, None, l)) -> failwith ("Line " ^ string_of_int l ^ "\nDefined type in function sig output not resolved at weeding time")
    | _ ->
      (id, List.map (fun (_, t) ->
        match t with
        | DefinedType (_, None, l) -> failwith ("Line " ^ string_of_int l ^ "\nDefined type in function sig inputs not resolved at weeding time")
        | _ -> t
      ) inputs, out_opt, false, l)
  in
  let (id, _, _, _, l) = f_tup in
  if List.length env = 0 then
    failwith "The environement is empty"
  else
    let s = List.hd env in
    check_exists s id l;
    s.f <- (f_tup :: s.f)
;;

let build_top_level_env top_decls =
  let env = empty_env () in
    let rec declare decls =
      match decls with
      | [] -> ()
      | d::decls' ->
        begin match d with
        | TopVarDecl v_decl -> var_decl env v_decl
        | TopTypeDecl t_decl -> type_decl env t_decl
        | TopFuncDecl f_decl -> func_decl env f_decl
        end;
        declare decls'
    in
    declare top_decls;
    env
;;

  