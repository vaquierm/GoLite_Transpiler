type base =
  | Dec
  | Oct
  | Bin
  | Hex

type binary_op =
  | BPlus | BMinus | Mult | Div | BinAND | BinOR | BinXOR
  | Rshift | Lshift | Mod | BoolAND | BoolOR | EQ | GT | LT | GEQ | LEQ | NEQ

type unary_op =
  | UMinus | UBinNOT | BoolNOT | Ref | DeRef

type typeT =
  (* Type from identifier: string of type, underlying type, line *)
  | DefinedType of string * (typeT option) * int
  (* Array type: Element type, experession for size of array, line *)
  | ArrayType of typeT * exp * int
  (* Slice type: type of element *)
  | SliceType of typeT
  (* Pointer type: type pointing to *)
  | PointerType of typeT
  (* Struct type: List of (name of flield, type of field), line number *)
  | StructType of ((string * typeT) list) * int
  (* Primitive types *)
  | IntType
  | FloatType
  | StrType
  | RuneType
  | BoolType
and exp =
  (* Arithmetic: Last int is the line number *)
  | Binop of exp * binary_op * exp * int
  | Unary of unary_op * exp * int
  (* Primary expressions *)
  | PrimExp of primary_exp
and primary_exp =
  (* Variable (Name of var, line number) *)
  | Var of string * int
  (* Primitive types *)
  | FloatLit of float
  | IntLit of string * base
  | RuneLit of string
  | BoolLit of bool
  (* String content, bool for raw string or not *)
  | StrLit of string * bool
  (* Cast of expression to other type, last int is line number *)
  | CastExp of typeT * exp * int
  (* Selection of field (exp to select from, field to select, line number) *)
  | SelectExp of primary_exp * string * int
  (* Index of array or slice (Array or slice, index, line number) *)
  | IndexExp of primary_exp * exp * int
  (* Function call (func name, inputs, line number) *)
  | FuncCall of string * (exp list) * int
  (* Slice expression (slice, begin, end, cap, line number) *)
  | SliceExp of primary_exp * exp * exp * (exp option) * int
  (* Unsure Cast or Function call (name of identifier, exp to cast or func input, line number) *)
  | UnsureTypeFuncCall of string * exp * int
  (* Append expression (slice, exp, line number) *)
  | AppendExp of primary_exp * exp * int
  (* Length expression (slice or array, line number) *)
  | LenExp of primary_exp * int
  (* Capacity expression (slice or array, line number) *)
  | CapExp of primary_exp * int

type variable_decl =
  (* Last int is line number *)
  (* Variable declaration initialized with type *)
  | VarDeclTypeInit of typeT * string * exp * int
  (* Variable declaration initialized no type *)
  | VarDeclNoTypeInit of string * exp * int
  (* Variable declaration with type no expression *)
  | VarDeclTypeNoInit of typeT * string * int

type type_decl =
  (* Type of the declaration, name of type, line number *)
  TypeDecl of typeT * string * int

type statement = 
  (* Type declaration statement *)
  | TypeDeclStm of type_decl
  (* Variable declaration statement *)
  | VarDeclStm of variable_decl
  (* Return statement (expression, line number) *)
  | Return of (exp option) * int
  (* Break statement with line number*)
  | Break of int
  (* Continue statement with line number *)
  | Continue of int
  (* Expression statement (exp, line number) *)
  | ExpStm of exp * int
  (* Assgnment statement (LHS, RHS, line number) *)
  | AssignStm of exp * exp * int
  (* If Statement (condition, then block, else block, line number) *)
  | IfStm of exp * block * (block option) * int
  (* A block statement *)
  | BlockStm of block
  (* While loops (Condition, body, line number) *)
  | WhileStm of (exp option) * block * int
  (* For loops (Init, Condition, Increment, body, line number) *)
  | ForStm of (statement option) * (exp option) * (statement option) * block * int
  (* Print statement (exp to print, new line, line number) *)
  | Print of exp * bool * int
and block =
  (* List of statements the block is made of, last line of block *)
  | StmsBlock of (statement list) * int

type func_decl =
  (* Function name, List of inputs (id, type), return type, block, line number *)
  | FuncDecl of string * ((string * typeT) list) * (typeT option) * block * int

type top_level_decl = 
  (* Type declaration *)
  | TopTypeDecl of type_decl
  (* Function declaration *)
  | TopFuncDecl of func_decl
  (* Variable declaration *)
  | TopVarDecl of variable_decl

type package_clause =
  (* Name of package *)
  | Package of string

type program =
  | Program of package_clause * (top_level_decl list)

(* Gets the last line of a block *)
let block_endline b =
  match b with
  | StmsBlock (_, l) -> l
;;

(* Gets the last line of an if statement *)
let if_stm_endline if_stm =
  match if_stm with
  | IfStm (_, b, None, _) -> block_endline b
  | IfStm (_, _, Some b, _) -> block_endline b
  | _ -> failwith "Unexpected non if statement"
;;

(* Gets the last line of a statement *)
let stm_endline s =
  match s with
  | BlockStm b -> block_endline b
  | Return (_, l) -> l
  | IfStm _ -> if_stm_endline s
  | ForStm (_, _, _, b, _) -> block_endline b
  | WhileStm (_, b, _) -> block_endline b
  | _ -> failwith "Unexpected expression last line query"
;;

let binop_ast_str b_op =
  match b_op with
  | BPlus -> "BPlus"
  | BMinus -> "BMinus"
  | Mult -> "Mult"
  | Div -> "Div"
  | BinAND -> "BinAND"
  | BinOR -> "BinOR"
  | BinXOR -> "BinXOR"
  | Rshift -> "Rshift"
  | Lshift -> "Lshift"
  | Mod -> "Mod"
  | BoolAND -> "BoolAND"
  | BoolOR -> "BoolOR"
  | EQ -> "EQ"
  | GT -> "GT"
  | LT -> "LT"
  | GEQ -> "GEQ"
  | LEQ -> "LEQ"
  | NEQ -> "NEQ"
;;

let unop_ast_str u_op =
  match u_op with
  | UMinus -> "UMinus"
  | UBinNOT -> "UBinNOT"
  | BoolNOT -> "BoolNOT"
  | Ref -> "Ref"
  | DeRef -> "DeRef"
;;

let base_ast_str b =
  match b with
  | Dec -> "Dec"
  | Oct -> "Oct"
  | Bin -> "Bin"
  | Hex -> "Hex"

let rec typeT_ast_str t =
  match t with
  | DefinedType (name, t_opt, l) ->
    let t_str = match t_opt with
    | None -> "None"
    | Some t -> "Some (" ^ typeT_ast_str t ^ ")"
    in
      "DefinedType (\"" ^ name ^ "\", " ^ t_str ^ ", " ^ string_of_int l ^ ")"
  | ArrayType (t', e, l) -> "ArrayType (" ^ typeT_ast_str t' ^ ", " ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | SliceType t' -> "SliceType (" ^ typeT_ast_str t' ^ ")"
  | PointerType t' -> "PointerType (" ^ typeT_ast_str t' ^ ")"
  | StructType (f_list, l) ->
    let f_str = List.fold_right (
      fun (id, t') acc -> "(\"" ^ id ^ "\", " ^ typeT_ast_str t' ^ "); " ^ acc) f_list ""
    in
      "StructType ([" ^ f_str ^ "], " ^ string_of_int l ^ ")"
  | IntType -> "IntType"
  | FloatType -> "FloatType"
  | StrType -> "StrType"
  | RuneType -> "RuneType"
  | BoolType -> "BoolType"
and exp_ast_str exp =
  match exp with
  | Binop (e1, op, e2, l) -> "Binop (" ^ exp_ast_str e1 ^ ", " ^ binop_ast_str op ^ ", " ^ exp_ast_str e2 ^ ", " ^ string_of_int l ^ ")"
  | Unary (op, e, l) -> "Unary (" ^ unop_ast_str op ^ ", " ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | PrimExp p_exp -> "PrimExp (" ^ prim_exp_ast_str p_exp ^ ")"
and prim_exp_ast_str p_exp =
  match p_exp with
  | Var (name, l) -> "Var (\"" ^ name ^ "\", " ^ string_of_int l ^ ")"
  | FloatLit f -> "FloatLit " ^ string_of_float f
  | RuneLit r -> "RuneLit \"" ^ r ^ "\""
  | IntLit (i, b) -> "IntLit (\"" ^ i ^ "\", " ^ base_ast_str b ^ ")"
  | StrLit (s, raw) -> "StrLit (\"" ^ s ^ "\", " ^ string_of_bool raw ^ ")"
  | BoolLit b -> "BoolLit " ^ string_of_bool b
  | CastExp (t, e, l) -> "CastExp (" ^ typeT_ast_str t ^ ", " ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | SelectExp (p_exp', field, l) -> "SelectExp (" ^ prim_exp_ast_str p_exp' ^ ", \"" ^ field ^ "\", " ^ string_of_int l ^ ")"
  | IndexExp (p_exp', e, l) -> "IndexExp (" ^ prim_exp_ast_str p_exp' ^ ", " ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | FuncCall (name, e_list, l) ->
    "FuncCall (\"" ^ name ^ "\", [" ^ (List.fold_right (fun e acc -> exp_ast_str e ^ "; " ^ acc) e_list "") ^ "], " ^ string_of_int l ^ ")"
  | SliceExp (p_exp, b_exp, e_exp, c_exp_opt, l) ->
    let p_exp_str = prim_exp_ast_str p_exp in
      let b_exp_str = exp_ast_str b_exp in
        let e_exp_str = exp_ast_str e_exp in
          let c_exp_str = match c_exp_opt with | None -> "None" | Some e -> "Some (" ^ exp_ast_str e ^ ")" in
            "SliceExp (" ^ p_exp_str ^ ", " ^ b_exp_str ^ ", " ^ e_exp_str ^ ", " ^ c_exp_str ^ ", " ^ string_of_int l ^ ")"
  | UnsureTypeFuncCall (name, e, l) -> "UnsureTypeFuncCall (\"" ^ name ^ "\", " ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | AppendExp (e1, e2, l) -> "AppendExp (" ^ prim_exp_ast_str e1 ^ ", " ^ exp_ast_str e2 ^ ", " ^ string_of_int l ^ ")"
  | LenExp (p_exp, l) -> "LenExp (" ^ prim_exp_ast_str p_exp ^ ", " ^ string_of_int l ^ ")"
  | CapExp (p_exp, l) -> "CapExp (" ^ prim_exp_ast_str p_exp ^ ", " ^ string_of_int l ^ ")"
;;

let type_decl_ast_str decl =
  match decl with
  | TypeDecl (t, name, l) -> "TypeDecl (" ^ typeT_ast_str t ^ ", \"" ^ name ^ "\", " ^ string_of_int l ^ ")"
;;

let var_decl_ast_str decl =
  match decl with
  | VarDeclTypeInit (t, id, e, l) -> "VarDeclTypeInit (" ^ typeT_ast_str t ^ ", \"" ^ id ^ "\", " ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | VarDeclNoTypeInit (id, e, l) -> "VarDeclNoTypeInit (\"" ^ id ^ "\", " ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | VarDeclTypeNoInit (t, id, l) -> "VarDeclTypeNoInit (" ^ typeT_ast_str t ^ ", \"" ^ id ^ "\", " ^ string_of_int l ^ ")"
;;

let rec block_ast_str b =
  match b with
  | StmsBlock (stm_list, l) -> "StmsBlock ([" ^ (List.fold_right (fun s acc -> stm_ast_str s ^ "; " ^ acc) stm_list "") ^ "], " ^ (string_of_int l) ^ ")"
and stm_ast_str stm =
  match stm with
  | TypeDeclStm decl -> "TypeDeclStm (" ^ type_decl_ast_str decl ^ ")"
  | VarDeclStm decl -> "VarDeclStm (" ^ var_decl_ast_str decl ^ ")"
  | Return (exp_op, l) ->
    let return_str =
      begin match exp_op with
      | None -> "None"
      | Some e -> "Some (" ^ exp_ast_str e ^ ")"
      end in
      "Return (" ^ return_str ^ ", " ^ (string_of_int l) ^ ")"
  | Break l -> "Break " ^ string_of_int l
  | Continue l -> "Continue " ^ string_of_int l
  | ExpStm (e, l) -> "ExpStm (" ^ exp_ast_str e ^ ", " ^ string_of_int l ^ ")"
  | AssignStm (lhs, rhs, l) -> "AssignStm (" ^ exp_ast_str lhs ^ ", " ^ exp_ast_str rhs ^ ", " ^ string_of_int l ^ ")"
  | IfStm (cond, if_b, else_b_opt, l) ->
    let else_str =
      match else_b_opt with
      | None -> "None"
      | Some b -> "Some (" ^ block_ast_str b ^ ")"
      in
      "IfStm (" ^ exp_ast_str cond ^ ", " ^ block_ast_str if_b ^ ", " ^ else_str ^ ", " ^ string_of_int l ^ ")"
  | BlockStm b -> "BlockStm (" ^ block_ast_str b ^ ")"
  | WhileStm (cond_op, b, l) ->
    let cond_str = match cond_op with
    | None -> "None"
    | Some cond -> "Some (" ^ exp_ast_str cond ^ ")"
    in
      "WhileStm (" ^ cond_str ^ ", " ^ block_ast_str b ^ ", " ^ string_of_int l ^ ")"
  | ForStm (init_opt, cond_opt, update_opt, b, l) ->
    let init_str = match init_opt with None -> "None" | Some init -> "Some (" ^ stm_ast_str init ^ ")" in
    let update_str = match update_opt with None -> "None" | Some update -> "Some (" ^ stm_ast_str update ^ ")" in
    let cond_str = match cond_opt with None -> "None" | Some cond -> "Some (" ^ exp_ast_str cond ^ ")" in
      "ForStm (" ^ init_str ^ ", " ^ cond_str ^ ", " ^ update_str ^ ", " ^ block_ast_str b ^ ", " ^ string_of_int l ^ ")"
  | Print (e, nl, l) -> "Print (" ^ exp_ast_str e ^ ", " ^ string_of_bool nl ^ ", " ^ string_of_int l ^ ")"
;;

let func_decl_ast_str decl =
  match decl with
  | FuncDecl (name, args, t_opt, b, l) ->
    let t_opt_str = begin match t_opt with
    | None -> "None"
    | Some t -> "Some (" ^ typeT_ast_str t ^ ")"
    end in
    "FuncDecl (\"" ^ name ^ "\", [" ^ (List.fold_right (fun (id, t) acc -> "(\"" ^ id ^ "\", " ^ typeT_ast_str t ^ "); " ^ acc) args "") ^ "], " ^ t_opt_str ^ ", " ^ block_ast_str b ^ ", " ^ (string_of_int l) ^ ")"
;;

let top_decl_ast_str decl =
  match decl with
  | TopTypeDecl type_decl -> "TopTypeDecl (" ^ type_decl_ast_str type_decl ^ ")"
  | TopVarDecl var_decl -> "TopVarDecl (" ^ var_decl_ast_str var_decl ^ ")"
  | TopFuncDecl func_decl -> "TopFuncDecl (" ^ func_decl_ast_str func_decl ^ ")"
;;

let package_ast_str pkg =
  match pkg with
  | Package str -> "Package \"" ^ str ^ "\""
;;

let program_ast_str program =
  match program with
  | Program (pkg, decls) -> "Program (" ^ package_ast_str pkg ^ ", [" ^ (List.fold_right (fun d acc -> top_decl_ast_str d ^ "; " ^ acc) decls "") ^ "])"
;;
