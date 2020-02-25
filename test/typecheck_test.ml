open OUnit2
open Exceptions
open Ast
open Typecheck
open Weeding

let var_decl_cannot_infer _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/var_decl_cannot_infer.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Cannot initialize variable 'x' with expression 'foo()' that has no type.", 4)) f
;;

let field_not_found _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/field_not_found.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The type 't' does not have any field 'b'", 7)) f
;;

let cannot_select_t _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/cannot_select_t.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The type 'int' does not have any field 'a'", 4)) f
;;

let correct_select _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_select.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopTypeDecl (TypeDecl (StructType ([("b", StructType ([("c", IntType); ], 4)); ("a", IntType); ], 2), "t", 2)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeNoInit (DefinedType ("t", Some (StructType ([("b", StructType ([("c", IntType); ], 4)); ("a", IntType); ], 2)), 2), "e", 9)); VarDeclStm (VarDeclTypeInit (StructType ([("c", IntType); ], 4), "x", PrimExp (SelectExp (Var ("e", 10), "b", 10)), 10)); VarDeclStm (VarDeclTypeInit (IntType, "y", PrimExp (SelectExp (SelectExp (Var ("e", 11), "b", 11), "c", 11)), 11)); VarDeclStm (VarDeclTypeInit (IntType, "z", PrimExp (SelectExp (Var ("e", 12), "a", 12)), 12)); ], 13), 8)); ]))
;;

let cannot_index _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/cannot_index.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Cannot index type 'int'", 4)) f
;;

let non_int_index _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/non_int_index.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Non interger array index 'true' of type 'bool'", 4)) f
;;

let correct_index _ = 
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_index.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeNoInit (ArrayType (IntType, PrimExp (IntLit ("5", Dec)), 3), "x", 3)); VarDeclStm (VarDeclTypeInit (IntType, "y", PrimExp (IndexExp (Var ("x", 4), Binop (PrimExp (IntLit ("1", Dec)), BPlus, PrimExp (IntLit ("1", Dec)), 4), 4)), 4)); ], 5), 2)); ]))
;;

let func_call_n_args_wrong _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/func_call_n_args_wrong.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The function 'foo' expects 2 arguments. Got 1.", 5)) f
;;

let func_call_wrong_type _ = 
  let ast = Ast_build.build_ast "test/test_programs/typecheck/func_call_wrong_type.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("In function call 'foo', expression '2' has type 'int'. Expected 'bool'", 4)) f
;;

let correct_func_call _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_func_call.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("foo", [], None, StmsBlock ([], 2), 2)); TopFuncDecl (FuncDecl ("bar", [("a", IntType); ("b", BoolType); ], None, StmsBlock ([], 3), 3)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (PrimExp (FuncCall ("foo", [], 5)), 5); ExpStm (PrimExp (FuncCall ("bar", [PrimExp (IntLit ("1", Dec)); PrimExp (BoolLit true); ], 6)), 6); ], 7), 4)); ]))
;;

let slice_index_non_int _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/slice_index_non_int.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The expression 'true' must have type int. Got 'bool'", 4)) f
;;

let cannot_slice_t _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/cannot_slice_t.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The expression 'x' of type [3]int cannot be sliced", 4)) f
;;

let slice_correct _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/slice_correct.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeNoInit (SliceType (IntType), "x", 3)); VarDeclStm (VarDeclTypeInit (SliceType (IntType), "a", PrimExp (SliceExp (Var ("x", 4), PrimExp (IntLit ("0", Dec)), PrimExp (IntLit ("1", Dec)), None, 4)), 4)); VarDeclStm (VarDeclTypeInit (SliceType (IntType), "b", PrimExp (SliceExp (Var ("x", 5), PrimExp (IntLit ("1", Dec)), PrimExp (LenExp (Var ("x", 5), 5)), None, 5)), 5)); VarDeclStm (VarDeclTypeInit (SliceType (IntType), "c", PrimExp (SliceExp (Var ("x", 6), PrimExp (IntLit ("1", Dec)), PrimExp (IntLit ("1", Dec)), None, 6)), 6)); VarDeclStm (VarDeclTypeInit (SliceType (IntType), "d", PrimExp (SliceExp (Var ("x", 7), PrimExp (IntLit ("1", Dec)), PrimExp (IntLit ("1", Dec)), Some (PrimExp (IntLit ("1", Dec))), 7)), 7)); VarDeclStm (VarDeclTypeInit (SliceType (IntType), "e", PrimExp (SliceExp (Var ("x", 8), PrimExp (IntLit ("0", Dec)), PrimExp (IntLit ("1", Dec)), Some (PrimExp (IntLit ("1", Dec))), 8)), 8)); ], 9), 2)); ]))
;;

let len_incorrect_t _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/len_incorrect_t.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Invalid argument type 'int' for len", 4)) f
;;

let cap_incorrect_t _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/cap_incorrect_t.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Invalid argument type 'int' for cap", 4)) f
;;

let append_non_slice _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/append_non_slice.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Expression 'x' must be of type slice. Got '[1]int'", 4)) f
;;

let append_type_mismatch _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/append_type_mismatch.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Type mismatch. Element to be appended must be of type 'int'. Got 'bool'", 4)) f
;;

let len_cap_append_correct _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/len_cap_append_correct.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeNoInit (SliceType (IntType), "x", 3)); VarDeclStm (VarDeclTypeNoInit (ArrayType (IntType, PrimExp (IntLit ("1", Dec)), 4), "y", 4)); VarDeclStm (VarDeclTypeInit (IntType, "a", PrimExp (LenExp (Var ("x", 5), 5)), 5)); VarDeclStm (VarDeclTypeInit (IntType, "b", PrimExp (LenExp (Var ("y", 6), 6)), 6)); VarDeclStm (VarDeclTypeInit (IntType, "c", PrimExp (CapExp (Var ("x", 7), 7)), 7)); VarDeclStm (VarDeclTypeInit (IntType, "d", PrimExp (CapExp (Var ("y", 8), 8)), 8)); VarDeclStm (VarDeclTypeInit (SliceType (IntType), "e", PrimExp (AppendExp (Var ("x", 9), PrimExp (IntLit ("1", Dec)), 9)), 9)); ], 10), 2)); ]))
;;

let cannot_cast_type _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/cannot_cast_type.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Type Error: Cannot cast type 'bool' into 'int'", 4)) f
;;

let correct_cast _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_cast.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "a", 2)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([TypeDeclStm (TypeDecl (IntType, "b", 4)); VarDeclStm (VarDeclTypeNoInit (DefinedType ("a", Some (IntType), 2), "x", 5)); VarDeclStm (VarDeclTypeNoInit (DefinedType ("b", Some (IntType), 4), "y", 6)); VarDeclStm (VarDeclTypeNoInit (IntType, "z", 7)); AssignStm (PrimExp (Var ("x", 8)), PrimExp (CastExp (DefinedType ("a", Some (IntType), 2), PrimExp (Var ("y", 8)), 8)), 8); AssignStm (PrimExp (Var ("x", 9)), PrimExp (CastExp (DefinedType ("a", Some (IntType), 2), PrimExp (Var ("z", 9)), 9)), 9); AssignStm (PrimExp (Var ("y", 10)), PrimExp (CastExp (DefinedType ("b", Some (IntType), 4), PrimExp (Var ("x", 10)), 10)), 10); AssignStm (PrimExp (Var ("y", 11)), PrimExp (CastExp (DefinedType ("b", Some (IntType), 4), PrimExp (Var ("z", 11)), 11)), 11); AssignStm (PrimExp (Var ("z", 12)), PrimExp (CastExp (IntType, PrimExp (Var ("x", 12)), 12)), 12); AssignStm (PrimExp (Var ("z", 13)), PrimExp (CastExp (IntType, PrimExp (Var ("y", 13)), 13)), 13); ], 14), 3)); ]))
;;