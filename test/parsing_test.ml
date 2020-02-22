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

