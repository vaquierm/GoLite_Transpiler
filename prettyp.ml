open Ast

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

let binop_str b_op =
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

let unop_str u_op =
  match u_op with
  | UMinus -> "-"
  | UBinNOT -> "^"
  | BoolNOT -> "!"
  | Ref -> "&"
  | DeRef -> "*"
;;

let base_str b =
  match b with
  | Dec -> ""
  | Oct -> "0o"
  | Bin -> "0b"
  | Hex -> "0x"

let rec typeT_str t n =
  match t with
  | DefinedType (name, _, _) -> name
  | ArrayType (t', e) -> "[" ^ exp_str e n ^ "]" ^ typeT_str t' n
  | SliceType t' -> "[" ^ "]" ^ typeT_str t' n
  | PointerType t' -> "*" ^ typeT_str t' n
  | StructType f_list ->
    let f_str = List.fold_right (
      fun (id, t') acc ->
        acc ^ indents (n+1) ^ id ^ " " ^ typeT_str t' (n+1) ^ ";\n") f_list ""
    in
      "struct {\n" ^ f_str ^ indents n ^ "}"
  | IntType -> "int"
  | FloatType -> "float32"
  | StrType -> "string"
  | RuneType -> "rune"
and exp_str exp n =
  match exp with
  | Binop (e1, op, e2, _) ->
    "(" ^ exp_str e1 n ^ " " ^ binop_str op ^ " " ^ exp_str e2 n ^ ")"
  | Unary (op, e, _) ->
    "(" ^ unop_str op ^ exp_str e n ^ ")"
  | PrimExp p_exp -> prim_exp_str p_exp n
and prim_exp_str p_exp n =
  match p_exp with
  | Var (name, _) -> name
  | FloatLit f -> string_of_float f
  | RuneLit r -> "'" ^ r ^ "'"
  | IntLit (i, b) -> base_str b ^ i
  | StrLit (s, raw) ->
    let tick = if raw then "`" else "\"" in
      tick ^ s ^ tick
  | CastExp (t, e, _) -> typeT_str t n ^ "(" ^ exp_str e n ^ ")"
  | SelectExp (p_exp', field, _) -> prim_exp_str p_exp' n ^ "." ^ field
  | IndexExp (p_exp', e, _) -> prim_exp_str p_exp' n ^ "[" ^ exp_str e n ^ "]"
  | FuncCall (name, e_list, _) ->
    if List.length e_list = 0 then name ^ "()" else
      let (last, rest) = get_last e_list in
      let args = List.fold_right (
        fun e acc -> 
          exp_str e n ^ ", " ^ acc
        ) rest (exp_str last n)
      in
        name ^ "(" ^ args ^ ")"
  | SliceExp (p_exp, b_exp, e_exp, c_exp_opt, _) ->
    let p_exp_str = prim_exp_str p_exp n in
      let b_exp_str = exp_str b_exp n in
        let e_exp_str = exp_str e_exp n in
          let c_exp_str = match c_exp_opt with | None -> "" | Some e -> ":" ^ exp_str e n in
            p_exp_str ^ "[" ^ (if b_exp_str = "0" then "" else b_exp_str) ^ ":" ^ e_exp_str ^ c_exp_str
  | UnsureTypeFuncCall (name, e, _) -> name ^ "(" ^ exp_str e n ^ ")"
  | AppendExp (e1, e2, _) -> "append(" ^ prim_exp_str e1 n ^ ", " ^ exp_str e2 n ^ ")"
  | LenExp (p_exp, _) -> "len(" ^ prim_exp_str p_exp n ^ ")"
  | CapExp (p_exp, _) -> "cap(" ^ prim_exp_str p_exp n ^ ")"
;;

let type_decl_str decl n =
  match decl with
  | TypeDecl (t, name, _) ->
    indents n ^ "type " ^ name ^ " " ^ typeT_str t n ^";\n"
;;

let var_decl_str decl n =
  match decl with
  | VarDeclTypeInit (t, id, e, _) ->
    indents n ^ "var " ^ id ^ " " ^ typeT_str t n ^ " = " ^ exp_str e n ^ ";\n"
  | VarDeclNoTypeInit (id, e, _) ->
    indents n ^ "var " ^ id ^ " = " ^ exp_str e n ^ ";\n"
  | VarDeclTypeNoInit (t, id, _) ->
    indents n ^ "var " ^ id ^ " " ^ typeT_str t n ^ ";\n"
;;

let rec block_str b n =
  match b with
  | StmsBlock stm_list ->
    let stms_str = List.fold_right (fun s acc -> acc ^ stm_str s (n+1)) stm_list "" in
      "{\n" ^ stms_str ^ indents n ^ "}\n"
and stm_str stm n =
  match stm with
  | TypeDeclStm decl -> type_decl_str decl n
  | VarDeclStm decl -> var_decl_str decl n
  | Return (exp_op, _) ->
    let return_str = begin match exp_op with None -> "" | Some e -> " " ^ exp_str e n end in
      indents n ^ "return" ^ return_str ^ ";\n"
  | Break -> indents n ^ "break;\n"
  | Continue -> indents n ^ "continue;\n"
  | ExpStm (e, _) -> indents n ^ exp_str e n ^ ";\n"
  | AssignStm (lhs, rhs, _) -> indents n ^ exp_str lhs n ^ " = " ^ exp_str rhs n ^ ";\n"
  | IfStm (cond, if_b, else_b_opt, _) ->
    let else_str = match else_b_opt with None -> "" | Some b -> indents n ^ "else " ^ block_str b n in
      indents n ^ "if " ^ exp_str cond n ^ " " ^ block_str if_b n ^ else_str
  | BlockStm b -> indents n ^ block_str b n
  | WhileStm (cond_op, b, _) ->
    let cond_str = match cond_op with None -> "" | Some cond -> exp_str cond n in
      indents n ^ "for " ^ cond_str ^ " " ^ block_str b n
  | ForStm (init_opt, cond_opt, update_opt, b, _) ->
    let init_str = match init_opt with None -> ";" | Some init -> let s = stm_str init n in String.sub s (s_in * n) ((String.length s) - (s_in * n) - 1) in
    let update_str = match update_opt with None -> ";" | Some update -> let s = stm_str update n in String.sub s (s_in * n) ((String.length s) - (s_in * n) - 1) in
    let cond_str = match cond_opt with None -> ";" | Some cond -> exp_str cond n ^ ";" in
    indents n ^ "for " ^ init_str ^ " " ^ cond_str ^ " " ^ update_str ^ " " ^ block_str b n
  | Print (e, nl, _) ->
    let p = if nl then "println" else "print" in
    indents n ^ p ^ "(" ^ exp_str e n ^ ");\n"
;;


let func_decl_str decl n =
  match decl with
  | FuncDecl (name, args, t_opt, b, _) ->
    let arg_str = if List.length args = 0 then "" else
      let ((id_l, t_l), rest) = get_last args in
        List.fold_left (fun acc (id, t) -> id ^ " " ^ typeT_str t n ^ ", " ^ acc) (id_l ^ " " ^ typeT_str t_l n) rest
      in
      let ret_str = match t_opt with
      | None -> ""
      | Some t -> typeT_str t n ^ " "
      in
      indents n ^ "func " ^ name ^ "(" ^ arg_str ^ ") " ^ ret_str ^ block_str b n
;;

let top_level_decl_str decl =
  match decl with
  | TopTypeDecl type_decl -> type_decl_str type_decl 0
  | TopVarDecl var_decl -> var_decl_str var_decl 0
  | TopFuncDecl func_decl ->  func_decl_str func_decl 0
;;

let pkg_str pkg_clause =
  match pkg_clause with
  | Package name -> "import " ^ name ^ ";\n"
;;

let program_str prog = 
  match prog with
  | Program (pkg_clause, decls) ->
    let pkg = pkg_str pkg_clause in
      let decls = List.map top_level_decl_str decls in
        pkg ^ (List.fold_right (fun d acc -> acc ^ d) decls "") ^ "\n"
;;