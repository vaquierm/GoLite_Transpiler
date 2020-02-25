open OUnit2
open Exceptions
open Ast
open Weeding

let type_never_defined _ =
  let ast = Ast_build.build_ast "test/test_programs/env/type_never_defined.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("The type 't' was never defined", Some 6)) f
;;

let var_never_defined _ =
  let ast = Ast_build.build_ast "test/test_programs/env/var_never_defined.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("The variable 'y' was never defined", Some 6)) f
;;

let func_never_defined _ =
  let ast = Ast_build.build_ast "test/test_programs/env/func_never_defined.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("The function 'foo' was never defined", Some 3)) f
;;

let many_func_args_same_name _ =
  let ast = Ast_build.build_ast "test/test_programs/env/many_func_args_same_name.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("Multiple function arguments with the same name 'x' in declaration of 'foo'", Some 2)) f
;;

let id_already_exists_in_scope _ =
  let ast = Ast_build.build_ast "test/test_programs/env/id_already_exists_in_scope.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("A type with name 'x' was already defined in this scope on line 3", Some 4)) f
;;

let id_already_exists_in_scope_func _ =
  let ast = Ast_build.build_ast "test/test_programs/env/id_already_exists_in_scope_func.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("A variable with name 'x' was already defined in this scope on line 2", Some 3)) f
;;

let misuse_var _ =
  let ast = Ast_build.build_ast "test/test_programs/env/misuse_var.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("t is not a variable, it is a type declared on line 3", Some 4)) f
;;

let misuse_type _ =
  let ast = Ast_build.build_ast "test/test_programs/env/misuse_type.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("x is not a type, it is a variable declared on line 3", Some 4)) f
;;

let misuse_func _ =
  let ast = Ast_build.build_ast "test/test_programs/env/misuse_func.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("x is not a function, it is a variable declared on line 3", Some 4)) f
;;

let incorrect_shadow _ =
  let ast = Ast_build.build_ast "test/test_programs/env/incorrect_shadow.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Type mismatch. Expression 'x' should be type 'a'. Got 'a'", 6)) f
;;

let correct_env_use _ =
  let ast = Ast_build.build_ast "test/test_programs/env/correct_env_use.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "t", 2)); TopFuncDecl (FuncDecl ("foo", [("x", IntType); ], None, StmsBlock ([BlockStm (StmsBlock ([TypeDeclStm (TypeDecl (BoolType, "t", 5)); BlockStm (StmsBlock ([VarDeclStm (VarDeclTypeInit (FloatType, "x", PrimExp (FloatLit 1.), 6)); IfStm (Binop (PrimExp (Var ("x", 6)), LT, PrimExp (FloatLit 4.), 6), StmsBlock ([VarDeclStm (VarDeclTypeNoInit (DefinedType ("t", Some (BoolType), 5), "z", 7)); ], 8), None, 6); ], 8)); ], 9)); VarDeclStm (VarDeclTypeNoInit (DefinedType ("t", Some (IntType), 2), "z", 10)); VarDeclStm (VarDeclTypeInit (IntType, "y", PrimExp (Var ("x", 11)), 11)); ], 12), 3)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (PrimExp (FuncCall ("foo", [PrimExp (IntLit ("1", Dec)); ], 14)), 14); ], 15), 13)); ]))
;;