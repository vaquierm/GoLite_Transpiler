open OUnit2
open Exceptions
open Weeding
open Ast

let get_test_ast top_decls main_stms main_l main_endl =
  Program (Package "test", top_decls @ [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock (main_stms, main_endl), main_l))])

let non_constant_array_size _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/non_constant_array_size.go" in
  let f () = weed_program ast in
  assert_raises (SyntaxError ("The size of the array must be an integer literal", Some 3)) f
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

let unreachable_after_return _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return.go" in
  let weeded_prog = weed_program ast in
  assert_equal (Prettyp.program_str weeded_prog) "import test;\nfunc main() {\n    return;\n}\n\n"
;;

let unreachable_after_return_block _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return_block.go" in
  let weeded_prog = weed_program ast in
  assert_equal (Prettyp.program_str weeded_prog) "import test;\nfunc main() {\n    {\n        return;\n    }\n}\n\n"
;;

let unreachable_after_return_if _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return_if.go" in
  let weeded_prog = weed_program ast in
  assert_equal (Prettyp.program_str weeded_prog) "import test;\nfunc main() {\n    if true {\n        return;\n    }\n    else {\n        return;\n    }\n}\n\n"
;;

let unreachable_after_return_while_true _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/unreachable_after_return_while_true.go" in
  let weeded_prog = weed_program ast in
  assert_equal (Prettyp.program_str weeded_prog) "import test;\nfunc main() {\n    for  {\n        return;\n    }\n}\n\n"
;;

let resolve_definedT_var_decl _ =
  let ast = Ast_build.build_ast "test/test_programs/weeding/resolve_definedT_var_decl.go" in
  let weeded_prog = weed_program ast in
  assert_equal weeded_prog (get_test_ast [TopTypeDecl (TypeDecl (DefinedType ("a", Some BoolType, 2), "a", 2)); TopVarDecl (VarDeclTypeInit (DefinedType ("a", Some BoolType, 2), "x", PrimExp (BoolLit true), 3)); TopVarDecl (VarDeclTypeNoInit (DefinedType ("a", Some BoolType, 2), "y", 4)); TopVarDecl (VarDeclTypeInit (DefinedType ("a", Some BoolType, 2), "z", PrimExp (Var ("y", 5)), 5))] [] 4 5)
;;
