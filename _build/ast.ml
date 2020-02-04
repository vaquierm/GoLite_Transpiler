type package_clause =
  (* Name of package *)
  | Package of string

type base =
  | Dec
  | Oct
  | Bin
  | Hex

type binary_op =
  | BPlus | BMinus | Mult | Div | BinAND | BinOR | BinXOR | BinANDNOT
  | Rshift | Lshift | Mod | BoolAND | BoolOR | EQ | GT | LT | GEQ | LEQ | NEQ

type unary_op =
  | UMinus | UBinNOT | BoolNOT | Ref | DeRef

type typeT =
  (* Type from identifier: string of type, real type*)
  | DefinedType of string * (typeT option)
  (* Array type: Element type, experession for size of array *)
  | ArrayType of typeT * exp
  (* Slice type: type of element *)
  | SliceType of typeT
  (* Pointer type: type pointing to *)
  | PointerType of typeT
  (* Struct type: List of (name of flield, type of field) *)
  | StructType of (string * typeT) list
  (* Primitive types *)
  | IntType
  | FloatType
  | StrType
  | RuneType
  | VoidType
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
  | StrLit of string
  (* Cast of expression to other type, last int is line number *)
  | CastExp of typeT * exp * int
  (* Selection of field (exp to select from, field to select, line number) *)
  | SelectExp of primary_exp * string * int
  (* Index of array or slice (Array or slice, index, line number) *)
  | IndexExp of primary_exp * exp * int
  (* Function call (func name, inputs, line number) *)
  | FuncCall of string * (exp list) * int
  (* Unsure Cast or Function call (name of identifier, exp to cast or func input, line number) *)
  | UnsureTypeFuncCall of string * exp * int
  (* Append expression (slice, exp, line number) *)
  | AppendExp of primary_exp * exp * int
  (* Length expression (slice or array, line number) *)
  | LenExp of primary_exp * int
  (* Capacity expression (slice or array, line number) *)
  | CapExp of primary_exp * int
  (* Temp constructor for conflicts *)
  | TempPrimExp of typeT

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

type func_decl =
  (* List of inputs (id, type), return type, block, line number *)
  | FuncDecl of ((string * typeT) list) * typeT * block * int
and statement = 
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
  (* Print statement (exp to print, line number) *)
  | Print of exp * int
and block =
  (* List of statements the block is made of *)
  | StmsBlock of statement list

type top_level_decl = 
  (* Type declaration *)
  | TopTypeDecl of type_decl
  (* Function declaration *)
  | TopFuncDecl of func_decl
  (* Variable declaration *)
  | TopVarDecl of variable_decl

type program =
  | Program of package_clause * (top_level_decl list)
