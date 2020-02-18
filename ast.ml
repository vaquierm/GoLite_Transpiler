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
  (* Array type: Element type, experession for size of array *)
  | ArrayType of typeT * exp
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
  (* Break statement *)
  | Break
  (* Continue statement *)
  | Continue
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

