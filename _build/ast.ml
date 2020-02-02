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

type urinary_op =
  | UMinus | UBinNOT | BoolNOT

type exp =
  (* Primitive types *)
  | FloatLit of float
  | IntLit of string * base
  | RuneLit of string
  | StrLit of string
  (* Arithmetic: Last int is the line number *)
  | Binop of exp * binary_op * exp * int
  | Urinary of urinary_op * exp * int

type typeT =
  (* Type from identifier: string of type, real type*)
  | DefinedType of string * typeT
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

type variable_decl =
  (* Last int is line number *)
  (* Variable declaration initialized with type *)
  | VarDeclTypeInit of typeT * string * exp * int
  (* Variable declaration initialized no type *)
  | VarDeclNoTypeInit of string * exp * int
  (* Variable declaration with type no expression *)
  | VarDeclTypeNoInit of typeT * string * int

type type_decl =
  (* Type of the declaration, name of type *)
  TypeDecl of typeT * string

type top_level_decl = 
  (* Type declaration *)
  | TopTypeDecl of type_decl
  (* (* Function declaration *)
  | FuncDecl of function_declaration*)
  (* Variable declaration *)
  | TopVarDecl of variable_decl

type program =
  | Program of package_clause * (top_level_decl list)
