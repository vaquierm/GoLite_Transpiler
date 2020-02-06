open Ast

(* Get a string containing n \t charachters *)
let indents n =
  let rec indents_tr n acc =
    if n = 0 then acc else indents_tr (n-1) ("    " ^ acc)
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
  | DefinedType (name, _) -> name
  | ArrayType (t', e) -> "[" ^ exp_str e n ^ "]" ^ typeT_str t' n
  | SliceType t' -> "[" ^ "]" ^ typeT_str t' n
  | PointerType t' -> "*" ^ typeT_str t' n
  | StructType f_list ->
    let f_str = List.fold_left (
      fun acc (id, t') ->
        acc ^ indents (n+1) ^ id ^ " " ^ typeT_str t' (n+1) ^ ";\n") "" f_list
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
    if List.length e_list = 0 then "" else
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
    "type " ^ name ^ " " ^ typeT_str t n ^";\n"
;;

let top_level_decl_str decl =
  match decl with
  | TopTypeDecl type_decl -> type_decl_str type_decl 0
  | _ ->  ""
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
        pkg ^ (List.fold_left (fun d acc -> d ^ acc) "" decls) ^ "\n"
;;