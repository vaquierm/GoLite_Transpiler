open OUnit2
open Exceptions
open Ast

let build_test_ast stms main_decl_line main_scope_endl =
  Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock (stms, main_scope_endl), main_decl_line))])
;;

let invalid_comma _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/unsupported_type.go" in
  assert_raises (UnsuportedError ("The type 'int8' is unsuported in GoLite", 3, Some (7, 11))) f
;;

let unexpected_char _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/unexpected_char.go" in
  assert_raises (LexerError ("Line 3, charachter 14\nLexer Error: Unexpected char '\\'")) f
;;

let missing_main _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/missing_main.go" in
  assert_raises (SyntaxError ("The program must have a function called main which takes no arguments and returns nothing", None)) f
;;

let unsupported_imports _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/unsupported_imports.go" in
  assert_raises (UnsuportedError (("Imports are unsupported in GoLite"), 3, None)) f
;;

let unsupported_type_alias _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/unsupported_type_alias.go" in
  assert_raises (UnsuportedError ("Type aliases are unsuported in GoLite", 3, None)) f
;;

let assignment_mismatch _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/assignment_mismatch.go" in
  assert_raises (SyntaxError ("Assignment mismatch. 3 variables but 2 values", Some 4)) f
;;

let assignment_match _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/assignment_match.go" in
  let stms = [VarDeclStm (VarDeclNoTypeInit ("a", PrimExp(BoolLit true), 4)); VarDeclStm (VarDeclNoTypeInit ("b", PrimExp(BoolLit false), 4))] in
  assert_equal ast (build_test_ast stms 3 5)
;;

let unsupported_map _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/unsupported_map.go" in
  assert_raises (UnsuportedError ("Map types are unsupported in GoLite", 3, None)) f
;;

let unsupported_interface _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/unsupported_interface.go" in
  assert_raises (UnsuportedError ("Interface types are unsupported in GoLite", 3, None)) f
;;

let lhs_short_id _ =
  let f = fun () -> Ast_build.build_ast "test/test_programs/parsing/lhs_short_id.go" in
  assert_raises (SyntaxError ("The left hand side of a short hand assignment must be an id", Some 3)) f
;;

let all_features _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/all_features.go" in
  let expected = "import test;\nvar x = 4;\nvar x int;\nvar x int = 4;\ntype x x;\ntype x int;\ntype x [1]int;\ntype x []int;\ntype x *int;\ntype x struct {\n    b struct {\n        a []int;\n    };\n    a int;\n};\nfunc foo() int {\n    var x int = 3;\n    var y int = 4;\n    {\n        type x int;\n        return;\n        return 3;\n        (3 + 4);\n        var x = foo();\n        x = x.a.s[4];\n        x = s[3:4:5;\n        x = int(4.5);\n        x = a(3);\n        x = bar(4, 5, \"hi\");\n    }\n}\nfunc bar(a int, b int, c string) {\n    if true {\n    }\n    else {\n        if false {\n        }\n        else {\n            if true {\n            }\n        }\n    }\n    for  {\n        continue;\n    }\n    {\n        var i = 0;\n        for ; (i < 4); i = (i + 1); {\n            var x = (!3);\n        }\n    }\n}\nfunc main() {\n}\n\n" in
  assert_equal (Prettyp.program_str ast) expected
;;
