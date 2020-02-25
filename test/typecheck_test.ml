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
  assert_raises (TypeError ("Cannot cast type 'bool' into 'int'", 3)) f
;;

let correct_cast _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_cast.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "a", 2)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([TypeDeclStm (TypeDecl (IntType, "b", 4)); VarDeclStm (VarDeclTypeNoInit (DefinedType ("a", Some (IntType), 2), "x", 5)); VarDeclStm (VarDeclTypeNoInit (DefinedType ("b", Some (IntType), 4), "y", 6)); VarDeclStm (VarDeclTypeNoInit (IntType, "z", 7)); AssignStm (PrimExp (Var ("x", 8)), PrimExp (CastExp (DefinedType ("a", Some (IntType), 2), PrimExp (Var ("y", 8)), 8)), 8); AssignStm (PrimExp (Var ("x", 9)), PrimExp (CastExp (DefinedType ("a", Some (IntType), 2), PrimExp (Var ("z", 9)), 9)), 9); AssignStm (PrimExp (Var ("y", 10)), PrimExp (CastExp (DefinedType ("b", Some (IntType), 4), PrimExp (Var ("x", 10)), 10)), 10); AssignStm (PrimExp (Var ("y", 11)), PrimExp (CastExp (DefinedType ("b", Some (IntType), 4), PrimExp (Var ("z", 11)), 11)), 11); AssignStm (PrimExp (Var ("z", 12)), PrimExp (CastExp (IntType, PrimExp (Var ("x", 12)), 12)), 12); AssignStm (PrimExp (Var ("z", 13)), PrimExp (CastExp (IntType, PrimExp (Var ("y", 13)), 13)), 13); ], 14), 3)); ]))
;;

let non_numeric_u_minus _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/non_numeric_u_minus.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The unary minus operator cannot be applied to type 'bool'", 3)) f
;;

let non_wholenum_u_bnot _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/non_wholenum_u_bnot.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The bitwise NOT operator cannot be applied to type 'float32'", 3)) f
;;

let non_bool_u_boolnot _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/non_bool_u_boolnot.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The logical NOT operator cannot be applied to type 'float32'", 3)) f
;;

let reference_non_var _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/reference_non_var.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Cannot reference the expression 'true'", 3)) f
;;

let deref_non_pointer _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/deref_non_pointer.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Cannot dereference expression of type 'int'", 4)) f
;;

let correct_unary _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_unary.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeInit (IntType, "a", Unary (UMinus, PrimExp (IntLit ("5", Dec)), 3), 3)); VarDeclStm (VarDeclTypeInit (FloatType, "b", Unary (UMinus, PrimExp (FloatLit 1.2), 4), 4)); VarDeclStm (VarDeclTypeNoInit (RuneType, "c", 5)); AssignStm (PrimExp (Var ("c", 6)), Unary (UMinus, PrimExp (Var ("c", 6)), 6), 6); VarDeclStm (VarDeclTypeInit (IntType, "d", Unary (UBinNOT, PrimExp (IntLit ("5", Dec)), 7), 7)); VarDeclStm (VarDeclTypeInit (RuneType, "e", Unary (UBinNOT, PrimExp (Var ("c", 8)), 8), 8)); VarDeclStm (VarDeclTypeInit (BoolType, "f", Unary (BoolNOT, PrimExp (BoolLit true), 9), 9)); VarDeclStm (VarDeclTypeNoInit (StructType ([("i", StructType ([("j", IntType); ], 12)); ("h", IntType); ], 10), "g", 15)); VarDeclStm (VarDeclTypeInit (PointerType (StructType ([("i", StructType ([("j", IntType); ], 12)); ("h", IntType); ], 10)), "k", Unary (Ref, PrimExp (Var ("g", 16)), 16), 16)); VarDeclStm (VarDeclTypeInit (PointerType (IntType), "l", Unary (Ref, PrimExp (SelectExp (Var ("g", 17), "h", 17)), 17), 17)); VarDeclStm (VarDeclTypeInit (PointerType (StructType ([("j", IntType); ], 12)), "m", Unary (Ref, PrimExp (SelectExp (Var ("g", 18), "i", 18)), 18), 18)); VarDeclStm (VarDeclTypeNoInit (PointerType (IntType), "o", 19)); VarDeclStm (VarDeclTypeInit (IntType, "p", Unary (DeRef, PrimExp (Var ("o", 20)), 20), 20)); ], 21), 2)); ]))
;;

let incompatible_binop _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/incompatible_binop.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Invalid operation '+' (operator not defined on type 'bool')", 3)) f
;;

let mismatched_types _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/mismatched_types.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Invalid operation '+' (mismatched types 'a' and 'b')", 7)) f
;;

let correct_binop _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_binop.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeNoInit (IntType, "i", 3)); VarDeclStm (VarDeclTypeNoInit (FloatType, "f", 4)); VarDeclStm (VarDeclTypeInit (IntType, "a", Binop (PrimExp (Var ("i", 5)), BPlus, PrimExp (Var ("i", 5)), 5), 5)); VarDeclStm (VarDeclTypeInit (FloatType, "b", Binop (PrimExp (Var ("f", 6)), BPlus, PrimExp (Var ("f", 6)), 6), 6)); VarDeclStm (VarDeclTypeInit (StrType, "c", Binop (PrimExp (StrLit ("Hello", false)), BPlus, PrimExp (StrLit ("World", false)), 7), 7)); VarDeclStm (VarDeclTypeInit (IntType, "d", Binop (PrimExp (Var ("i", 8)), BPlus, PrimExp (IntLit ("1", Dec)), 8), 8)); VarDeclStm (VarDeclTypeInit (FloatType, "e", Binop (PrimExp (Var ("f", 9)), BPlus, PrimExp (FloatLit 1.2), 9), 9)); VarDeclStm (VarDeclTypeInit (IntType, "ff", Binop (PrimExp (Var ("i", 10)), Div, PrimExp (Var ("i", 10)), 10), 10)); VarDeclStm (VarDeclTypeInit (FloatType, "g", Binop (PrimExp (Var ("f", 11)), Div, PrimExp (Var ("f", 11)), 11), 11)); VarDeclStm (VarDeclTypeInit (BoolType, "h", Binop (PrimExp (BoolLit true), BoolAND, PrimExp (BoolLit false), 12), 12)); VarDeclStm (VarDeclTypeInit (BoolType, "ii", Binop (PrimExp (BoolLit true), BoolOR, PrimExp (BoolLit false), 13), 13)); VarDeclStm (VarDeclTypeInit (BoolType, "j", Binop (PrimExp (Var ("i", 14)), LT, PrimExp (IntLit ("1", Dec)), 14), 14)); VarDeclStm (VarDeclTypeInit (BoolType, "k", Binop (PrimExp (Var ("i", 15)), NEQ, PrimExp (Var ("i", 15)), 15), 15)); VarDeclStm (VarDeclTypeInit (BoolType, "l", Binop (PrimExp (Var ("i", 16)), EQ, PrimExp (Var ("i", 16)), 16), 16)); ], 17), 2)); ]))
;;

let var_decl_type_mismatch _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/var_decl_type_mismatch.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Type mismatch. Expression 'true' should be type 'int'. Got 'bool'", 3)) f
;;

let correct_var_decl _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_var_decl.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "t", 2)); TopVarDecl (VarDeclTypeInit (IntType, "a", PrimExp (IntLit ("1", Dec)), 3)); TopVarDecl (VarDeclTypeInit (DefinedType ("t", Some (IntType), 2), "b", PrimExp (IntLit ("1", Dec)), 4)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeInit (DefinedType ("t", Some (IntType), 2), "c", PrimExp (CastExp (DefinedType ("t", Some (IntType), 2), PrimExp (IntLit ("1", Dec)), 6)), 6)); VarDeclStm (VarDeclTypeInit (IntType, "d", PrimExp (IntLit ("1", Dec)), 7)); VarDeclStm (VarDeclTypeInit (DefinedType ("t", Some (IntType), 2), "e", PrimExp (IntLit ("1", Dec)), 8)); ], 9), 5)); ]))
;;

let return_val_when_void _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/return_val_when_void.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Expected no return expression", 3)) f
;;

let return_mismatch_type _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/return_mismatch_type.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Expected return type 'int'. Got 'bool'", 3)) f
;;

let correct_return _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/correct_return.go" in
  let weeded_ast = weed_program ast in
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("foo", [], Some (IntType), StmsBlock ([IfStm (PrimExp (BoolLit true), StmsBlock ([Return (Some (PrimExp (IntLit ("1", Dec))), 4); ], 5), Some (StmsBlock ([Return (Some (PrimExp (IntLit ("2", Dec))), 7); ], 8)), 3); ], 9), 2)); TopFuncDecl (FuncDecl ("bar", [], Some (IntType), StmsBlock ([WhileStm (None, StmsBlock ([Return (Some (PrimExp (IntLit ("1", Dec))), 12); ], 13), 11); ], 14), 10)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([Return (None, 16); ], 17), 15)); ]))
;;

let expression_evaluated_not_used _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/expression_evaluated_not_used.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("'1' evaluated but not used", 3)) f
;;

let cannot_assignT _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/cannot_assignT.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Type mismatch. Cannot assign type 'bool' to 'int'", 4)) f
;;

let condition_not_bool _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/condition_not_bool.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("The condition expression must be of type bool. Got 'int'", 3)) f
;;

let not_all_paths_return _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/not_all_paths_return.go" in
  let weeded_ast = weed_program ast in
  let f () = typecheck_program weeded_ast in
  assert_raises (TypeError ("Not all code paths return type 'int' in function 'foo'", 2)) f
;;

let not_all_paths_return_for _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/not_all_paths_return_for.go" in
  let weeded_ast = weed_program ast in
  let f () = typecheck_program weeded_ast in
  assert_raises (TypeError ("Not all code paths return type 'int' in function 'foo'", 2)) f
;;

let all_code_paths_return _ =
  let ast = Ast_build.build_ast "test/test_programs/typecheck/all_code_paths_return.go" in
  let weeded_ast = weed_program ast in
  typecheck_program weeded_ast;
  assert_equal weeded_ast (Program (Package "test", [TopFuncDecl (FuncDecl ("foo", [], Some (IntType), StmsBlock ([IfStm (PrimExp (BoolLit true), StmsBlock ([Return (Some (PrimExp (IntLit ("1", Dec))), 4); ], 5), Some (StmsBlock ([Return (Some (PrimExp (IntLit ("2", Dec))), 7); ], 8)), 3); ], 9), 2)); TopFuncDecl (FuncDecl ("bar", [], None, StmsBlock ([IfStm (PrimExp (BoolLit true), StmsBlock ([Return (None, 12); ], 13), None, 11); ], 14), 10)); TopFuncDecl (FuncDecl ("boo", [], Some (IntType), StmsBlock ([BlockStm (StmsBlock ([Return (Some (PrimExp (IntLit ("1", Dec))), 17); ], 18)); ], 19), 15)); TopFuncDecl (FuncDecl ("far", [], Some (IntType), StmsBlock ([WhileStm (None, StmsBlock ([Return (Some (PrimExp (IntLit ("1", Dec))), 22); ], 23), 21); ], 24), 20)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([], 26), 25)); ]))
;;
