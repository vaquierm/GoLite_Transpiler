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

type top_level_declaration = 
  (* Type of the declaration, name of type *)
  | TypeDecl of typeT * string
  (*| VarDecl of var_delaration
  | FuncDecl of function_declaration*)
