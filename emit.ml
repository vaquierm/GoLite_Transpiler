(* This file emits the C++ source code from the ast *)

open Ast

(* Keeps track of which modeules are needed *)
let len_needed = ref false;;
let cap_needed = ref false;;
let slice_needed = ref false;;
let array_needed = ref false;;
let io_str_needed = ref false;;
let string_needed = ref false;;

(* Function used to read the modules *)
let read_whole_file filename =
  let ch = open_in filename in
  let s = really_input_string ch (in_channel_length ch) in
  close_in ch;
  s
;;

(* Ref holding all the struct types used in the ast *)
let structs = ref [];;

let find_struct_name s =
  let rec find_struct_name' structs =
    match structs with
    | [] -> None
    | (s', name)::structs' ->
      begin match s, s' with
      | (StructType (fs, _), StructType (fs', _)) when fs = fs' ->
        Some name
      | _ -> find_struct_name' structs'
      end
  in
  find_struct_name' !structs
;;

let struct_exists s =
  match find_struct_name s with
  | None -> false
  | Some _ -> true
;;

let struct_name_exists name =
  let rec struct_name_exists' structs = 
    match structs with
    | [] -> false
    | (s', name')::structs' when name = name' -> true
    | _::structs' -> struct_name_exists' structs'
  in
  struct_name_exists' !structs
;;

let rec resolve_type t =
  match t with
  | DefinedType (_, None, l) -> failwith ("Line " ^ string_of_int l ^ "\nDefined type'" ^ Prettyp.typeT_str t 0 ^ "' was never resolved during weeding")
  | DefinedType (_, Some t', _) -> resolve_type t'
  | ArrayType (t', e, l) -> ArrayType(resolve_type t', e, l)
  | SliceType t' -> SliceType (resolve_type t')
  | PointerType t' -> PointerType (resolve_type t')
  | StructType (fs, l) -> StructType (List.map (fun (id, t') -> (id, resolve_type t')) fs, l)
  | _ -> t
;;

(* Number of spaces per indent *)
let s_in = 4;;

let indent =
  let rec make_indent n =
    if n = 0 then "" else " " ^ make_indent (n-1)
  in
  make_indent s_in
;;

(* Get a string containing n indent charachters *)
let indents n =
  let rec indents_tr n acc =
    if n = 0 then acc else indents_tr (n-1) (indent ^ acc)
  in
  indents_tr n ""
;;

(* Helper function to get the last element of a list *)
let rec get_last l =
  match l with
  | [] -> failwith "Unexpected error: get_last empty input"
  | x::[] -> (x, [])
  | x::xs ->
    let last, rest = get_last xs in (last, x::rest)
;;

let binop_emit b_op =
  match b_op with
  | BPlus -> "+"
  | BMinus -> "-"
  | Mult -> "*"
  | Div -> "/"
  | BinAND -> "&"
  | BinOR -> "|"
  | BinXOR -> "^"
  | Rshift -> ">>"
  | Lshift -> "<<"
  | Mod -> "%"
  | BoolAND -> "&&"
  | BoolOR -> "||"
  | EQ -> "=="
  | GT -> ">"
  | LT -> "<"
  | GEQ -> ">="
  | LEQ -> "<="
  | NEQ -> "!="
;;

let unop_emit u_op =
  match u_op with
  | UMinus -> "-"
  | UBinNOT -> "~"
  | BoolNOT -> "!"
  | Ref -> "&"
  | DeRef -> "*"
;;

let base_emit b =
  match b with
  | Dec -> ""
  | Oct -> "0o"
  | Bin -> "0b"
  | Hex -> "0x"

let rec typeT_emit t n =
  match t with
  | DefinedType (_, Some t', _) -> typeT_emit (resolve_type t') n
  | DefinedType (_, None, l) -> failwith ("Line " ^ string_of_int l ^ "\nDefined type'" ^ Prettyp.typeT_str t 0 ^ "' was never resolved during weeding")
  | ArrayType (t', e, _) -> array_needed := true; "std::array<" ^ typeT_emit t' n ^ ", " ^ exp_emit e n ^ ">"
  | SliceType t' -> slice_needed := true; "Slice<" ^ typeT_emit t' n ^ ">"
  | PointerType t' -> typeT_emit t' n ^ "*"
  | StructType (f_list, _) ->
    let resolved_struct = resolve_type t in
    let type_name = match find_struct_name resolved_struct with
    | None ->
      let new_struct_name = "struct_" ^ string_of_int (Random.bits ()) in
        structs := (resolved_struct, new_struct_name)::(!structs);
        "struct " ^ new_struct_name
    | Some n -> "struct " ^ n
    in
    type_name
  | IntType -> "int"
  | FloatType -> "float"
  | StrType -> string_needed := true; "std::string"
  | RuneType -> "char"
  | BoolType -> "bool"
and exp_emit exp n =
  match exp with
  | Binop (e1, op, e2, _) ->
    "(" ^ exp_emit e1 n ^ " " ^ binop_emit op ^ " " ^ exp_emit e2 n ^ ")"
  | Unary (op, e, _) ->
    "(" ^ unop_emit op ^ exp_emit e n ^ ")"
  | PrimExp p_exp -> prim_exp_emit p_exp n
and prim_exp_emit p_exp n =
  match p_exp with
  | Var (name, _) -> name
  | FloatLit f -> string_of_float f
  | RuneLit r -> "'" ^ r ^ "'"
  | IntLit (i, b) -> base_emit b ^ i
  | StrLit (s, raw) ->
    string_needed := true;
    let s_tick = if raw then "R\"(" else "\"" in
      let e_tick = if raw then ")\"" else "\"" in
        s_tick ^ s ^ e_tick
  | BoolLit b -> string_of_bool b
  | CastExp (t, e, _) -> "((" ^ typeT_emit t n ^ ") " ^ exp_emit e n ^ ")"
  | SelectExp (p_exp', field, _) -> prim_exp_emit p_exp' n ^ "." ^ field
  | IndexExp (p_exp', e, _) -> prim_exp_emit p_exp' n ^ "[" ^ exp_emit e n ^ "]"
  | FuncCall (name, e_list, _) ->
    if List.length e_list = 0 then name ^ "()" else
      let (last, rest) = get_last e_list in
      let args = List.fold_right (
        fun e acc -> 
          exp_emit e n ^ ", " ^ acc
        ) rest (exp_emit last n)
      in
        name ^ "(" ^ args ^ ")"
  | SliceExp (p_exp, b_exp, e_exp, c_exp_opt, _) ->
    let p_exp_emit = prim_exp_emit p_exp n in
      let b_exp_emit = exp_emit b_exp n in
        let e_exp_emit = exp_emit e_exp n in
          let c_exp_emit = match c_exp_opt with | None -> "" | Some e -> ", " ^ exp_emit e n in
            slice_needed := true;
            "*" ^ p_exp_emit ^ ".slice(" ^ b_exp_emit ^ ", " ^ e_exp_emit ^ c_exp_emit ^ ")"
  | UnsureTypeFuncCall (name, _, l) -> failwith ("Line " ^ string_of_int l ^ "\nFunction call or cast not resolved at weeding")
  | AppendExp (e1, e2, _) -> "*" ^ prim_exp_emit e1 n ^ ".append(" ^ exp_emit e2 n ^ ")"
  | LenExp (p_exp, _) -> len_needed := true; "len(" ^ prim_exp_emit p_exp n ^ ")"
  | CapExp (p_exp, _) -> cap_needed := true; "cap(" ^ prim_exp_emit p_exp n ^ ")"
;;

let type_decl_emit decl n =
  match decl with
  | TypeDecl (t, name, _) ->
    begin match t with
    | StructType (_, _) ->
      let resolved_struct = resolve_type t in
      begin if not (struct_exists t) then
        begin if not (struct_name_exists name) then
          structs := (resolved_struct, name)::(!structs)
        else
          structs := (resolved_struct, name ^ "_" ^ string_of_int (Random.bits ()))::(!structs)
        end;
      end;
        ""
    | _ -> ""
    end
;;

let var_decl_emit decl n =
  match decl with
  | VarDeclTypeInit (t, id, e, _) ->
    indents n ^ typeT_emit t n ^ " " ^ id ^ " = " ^ exp_emit e n ^ ";\n"
  | VarDeclNoTypeInit (id, _, l) -> failwith ("Line " ^ string_of_int l ^ "\nVaraiable init " ^ id ^ " never infered type at weeding")
  | VarDeclTypeNoInit (t, id, _) -> indents n ^ typeT_emit t n ^ " " ^ id ^ ";\n"
;;

let rec block_emit b n =
  match b with
  | StmsBlock (stm_list, _) ->
    let stms_str = stms_emit stm_list (n+1) in
      "{\n" ^ stms_str ^ indents n ^ "}\n"
and stms_emit stms n =
  match stms with
  | [] -> ""
  | s::stms' -> let s_str = stm_emit s n in s_str ^ stms_emit stms' n
and stm_emit stm n =
  match stm with
  | TypeDeclStm decl -> type_decl_emit decl n
  | VarDeclStm decl -> var_decl_emit decl n
  | Return (exp_op, _) ->
    let return_emit = begin match exp_op with None -> "" | Some e -> " " ^ exp_emit e n end in
      indents n ^ "return" ^ return_emit ^ ";\n"
  | Break _ -> indents n ^ "break;\n"
  | Continue _ -> indents n ^ "continue;\n"
  | ExpStm (e, _) -> indents n ^ exp_emit e n ^ ";\n"
  | AssignStm (lhs, rhs, _) -> indents n ^ exp_emit lhs n ^ " = " ^ exp_emit rhs n ^ ";\n"
  | IfStm (cond, if_b, else_b_opt, _) ->
    let else_emit = match else_b_opt with None -> "" | Some b -> indents n ^ "else " ^ block_emit b n in
      indents n ^ "if (" ^ exp_emit cond n ^ ") " ^ block_emit if_b n ^ else_emit
  | BlockStm b -> indents n ^ block_emit b n
  | WhileStm (cond_op, b, _) ->
    let cond_emit = match cond_op with None -> "" | Some cond -> exp_emit cond n in
      indents n ^ "while (" ^ cond_emit ^ ") " ^ block_emit b n
  | ForStm (init_opt, cond_opt, update_opt, b, _) ->
    let init_emit = match init_opt with None -> ";" | Some init -> let s = stm_emit init n in String.sub s (s_in * n) ((String.length s) - (s_in * n) - 1) in
    let update_emit = match update_opt with None -> ";" | Some update -> let s = stm_emit update n in String.sub s (s_in * n) ((String.length s) - (s_in * n) - 2) in
    let cond_emit = match cond_opt with None -> ";" | Some cond -> exp_emit cond n ^ ";" in
    indents n ^ "for (" ^ init_emit ^ " " ^ cond_emit ^ " " ^ update_emit ^ ")" ^ block_emit b n
  | Print (e, nl, _) ->
    io_str_needed := true;
    let endl = if nl then " << std::endl;" else ";" in
    indents n ^ "std::cout << " ^ exp_emit e n ^ endl ^ "\n"
;;

(* Check if the type needs to be passed by reference *)
let pass_by_ref t =
  match resolve_type t with
  | ArrayType _ | SliceType _ | StructType _ -> true
  | _ -> false
;;

let build_func_arg id t n =
  let by_ref = if pass_by_ref t then "&" else "" in
  typeT_emit t n ^ " " ^ by_ref ^ id
;;

let func_decl_emit decl n =
  match decl with
  | FuncDecl (name, args, t_opt, b, _) ->
    let arg_emit = if List.length args = 0 then "" else
      let ((id_l, t_l), rest) = get_last args in
        List.fold_right (fun (id, t) acc -> build_func_arg id t n ^ ", " ^ acc) rest (build_func_arg id_l t_l n)
      in
      let ret_emit = match (name, t_opt) with
      | (name, None) when name = "main" -> "int"
      | (_, None) -> "void"
      | (_, Some t) -> typeT_emit t n
      in
      indents n ^ ret_emit ^ " " ^ name ^ "(" ^ arg_emit ^ ") " ^ block_emit b n
;;

let top_level_decl_emit decl =
  match decl with
  | TopTypeDecl type_decl -> type_decl_emit type_decl 0
  | TopVarDecl var_decl -> var_decl_emit var_decl 0
  | TopFuncDecl func_decl ->  func_decl_emit func_decl 0
;;

let rec top_level_decls_emit decls =
  match decls with
  | [] -> ""
  | d::decls' -> let decl_str = top_level_decl_emit d in
    decl_str ^ top_level_decls_emit decls'
;;

(*
Generate the function signatures at the top of the file to allow
mutially recursive functions
ex: int foo(int a);
*)
let rec top_func_sig_emit decls =
  match decls with
  | [] -> ""
  | (TopFuncDecl (FuncDecl (name, args, t_opt, _, _)))::decls' ->
    let arg_emit = if List.length args = 0 then "" else
      let ((id_l, t_l), rest) = get_last args in
      List.fold_right (fun (id, t) acc -> build_func_arg id t 0 ^ ", " ^ acc) rest (build_func_arg id_l t_l 0)
      in
      let ret_emit = match (name, t_opt) with
      | (name, None) when name = "main" -> "int"
      | (_, None) -> "void"
      | (_, Some t) -> typeT_emit t 0
      in
      let func_sig = indents 0 ^ ret_emit ^ " " ^ name ^ "(" ^ arg_emit ^ ");\n" in
        func_sig ^ (top_func_sig_emit decls')
  | d::decls' -> top_func_sig_emit decls'
;;

(* Generate structures needed for struct definitions *)
let struct_definitions_emit () =
  let gen_struct (s, name) acc =
    match s with
    | StructType (fields, _) ->
      let gen_field (field, t) acc =
        acc ^ indents 1 ^ typeT_emit t 1 ^ " " ^ field ^ ";\n"
      in
      let fields_str = List.fold_right gen_field fields "" in
      acc ^ "struct " ^ name ^ " {\n" ^ fields_str ^ "} " ^ name ^ ";\n"
    | _ -> failwith "Struct array contains a non struct key"
  in
  List.fold_right gen_struct !structs ""
;;

let program_emit program =
  match program with
  | Program (_, top_decls) ->
    cap_needed := false;
    len_needed := false;
    slice_needed := false;
    array_needed := false;
    io_str_needed := false;
    string_needed := false;
    structs := [];
    let string_prog = ref (top_level_decls_emit top_decls) in
      let structs_str = struct_definitions_emit () in
      string_prog := (top_func_sig_emit top_decls) ^ !string_prog;
      if !cap_needed && !array_needed then
        string_prog := read_whole_file "./res/cap_arr.cpp" ^ !string_prog;
      if !len_needed && !array_needed then
        string_prog := read_whole_file "./res/len_arr.cpp" ^ !string_prog;
      if !cap_needed && !slice_needed then
        string_prog := read_whole_file "./res/cap_slice.cpp" ^ !string_prog;
      if !len_needed && !slice_needed then
        string_prog := read_whole_file "./res/len_slice.cpp" ^ !string_prog;
      string_prog := structs_str ^ !string_prog;
      if !slice_needed then
        string_prog := read_whole_file "./res/slice.cpp" ^ !string_prog;
      if !io_str_needed && not (!slice_needed) then
        string_prog := "#include <iostream>\n" ^ !string_prog;
      if !array_needed then
        string_prog := "#include <array>\n" ^ !string_prog;
      if !string_needed then
        string_prog := "#include <string>\n" ^ !string_prog;
      !string_prog
;;
