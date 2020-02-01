type package_clause =
  (* Name of package *)
  | Package of string

type exp =
  | Float of float
  (* Define other expr *)

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
