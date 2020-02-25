open OUnit2
open Exceptions
open Weeding
open Ast

let non_constant_array_size _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/non_constant_array_size.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("The size of the array must be an integer literal", Some 4)) f
;;

let same_field_names_struct _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/same_field_name_struct.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("Multiple fields with name 'a' defined in struct", Some 2)) f
;;

let cast_none _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/cast_none.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Cannot cast the expression 'foo()' as it has no value", 5)) f
;;

let unecessary_cast _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unecessary_cast.go" in
  let weeded_prog = weed_program ast in
  assert_equal (Prettyp.program_str weeded_prog) "import test;\nfunc main() {\n    var x int = 1;\n}\n\n"
;;

let init_no_type_none _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/init_no_type_none.go" in
  let f () = weed_program ast in
  assert_raises (TypeError ("Cannot initialize variable 'x' with expression 'foo()' that has no type.", 5)) f
;;

let short_assign_loop_inc _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/short_assign_loop_inc.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("Cannot have short assign statement in loop increment statement", Some 3)) f
;;

let break_not_in_loop _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/break_not_in_loop.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("Break statement not in loop", Some 3)) f
;;

let continue_not_in_loop _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/continue_not_in_loop.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("Continue statement not in loop", Some 3)) f
;;

let lhs_not_assignable _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/lhs_not_assignable.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("The expression '1' is not assignable", Some 3)) f
;;

let unreachable_after_return _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([Return (None, 3); ], 6), 2)); ]))
;;

let unreachable_after_return_block _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return_block.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([BlockStm (StmsBlock ([Return (None, 4); ], 5)); ], 8), 2)); ]))
;;

let unreachable_after_return_if _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return_if.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([IfStm (PrimExp (BoolLit true), StmsBlock ([Return (None, 4); ], 5), Some (StmsBlock ([Return (None, 6); ], 7)), 3); ], 10), 2)); ]))
;;

let unreachable_after_return_while_true _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return_while_true.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([WhileStm (None, StmsBlock ([Return (None, 4); ], 5), 3); ], 8), 2)); ]))
;;

let unreachable_after_return_for_true _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return_for_true.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([BlockStm (StmsBlock ([VarDeclStm (VarDeclTypeInit (IntType, "x", PrimExp (IntLit ("0", Dec)), 3)); ForStm (None, None, Some (AssignStm (PrimExp (Var ("x", 3)), Binop (PrimExp (Var ("x", 3)), BPlus, PrimExp (IntLit ("1", Dec)), 3), 3)), StmsBlock ([Return (None, 4); ], 5), 3); ], 5)); ], 8), 2)); ]))
;;

let resolve_definedT_var_decl _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/resolve_definedT_var_decl.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopTypeDecl (TypeDecl (BoolType, "a", 2)); TopVarDecl (VarDeclTypeInit (DefinedType ("a", Some (BoolType), 2), "x", PrimExp (BoolLit true), 3)); TopVarDecl (VarDeclTypeNoInit (DefinedType ("a", Some (BoolType), 2), "y", 4)); TopVarDecl (VarDeclTypeInit (DefinedType ("a", Some (BoolType), 2), "z", PrimExp (Var ("y", 5)), 5)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeInit (DefinedType ("a", Some (BoolType), 2), "x", PrimExp (BoolLit true), 7)); VarDeclStm (VarDeclTypeNoInit (DefinedType ("a", Some (BoolType), 2), "y", 8)); VarDeclStm (VarDeclTypeInit (DefinedType ("a", Some (BoolType), 2), "z", PrimExp (Var ("y", 9)), 9)); ], 10), 6)); ]))
;;

let resolve_definedT_struct _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/resolve_definedT_struct.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "a", 2)); TopTypeDecl (TypeDecl (StructType ([("y", StructType ([("z", DefinedType ("a", Some (IntType), 2)); ], 5)); ("x", DefinedType ("a", Some (IntType), 2)); ], 3), "b", 3)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([], 10), 9)); ]))
;;

let resolve_definedT_func _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/resolve_definedT_func.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "a", 2)); TopFuncDecl (FuncDecl ("foo", [("x", DefinedType ("a", Some (IntType), 2)); ], Some (DefinedType ("a", Some (IntType), 2)), StmsBlock ([], 4), 3)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([], 6), 5)); ]))
;;

let resolve_definedT_cast _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/resolve_definedT_cast.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "a", 2)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeInit (DefinedType ("a", Some (IntType), 2), "x", PrimExp (CastExp (DefinedType ("a", Some (IntType), 2), PrimExp (IntLit ("1", Dec)), 4)), 4)); ], 5), 3)); ]))
;;

let resolve_definedT_types _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/resolve_definedT_types.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "t", 2)); TopVarDecl (VarDeclTypeNoInit (ArrayType (DefinedType ("t", Some (IntType), 2), PrimExp (IntLit ("1", Dec)), 3), "a", 3)); TopVarDecl (VarDeclTypeNoInit (SliceType (DefinedType ("t", Some (IntType), 2)), "b", 4)); TopVarDecl (VarDeclTypeNoInit (PointerType (DefinedType ("t", Some (IntType), 2)), "c", 5)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([], 7), 6)); ]))
;;
