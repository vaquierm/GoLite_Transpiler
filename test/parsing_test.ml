open OUnit2
open Exceptions
open Ast

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

let var_decl _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/var_decl.go" in
  assert_equal ast (Program (Package "test", [TopVarDecl (VarDeclTypeNoInit (IntType, "a", 2)); TopVarDecl (VarDeclTypeInit (IntType, "b", PrimExp (IntLit ("4", Dec)), 3)); TopVarDecl (VarDeclNoTypeInit ("c", PrimExp (IntLit ("4", Dec)), 4)); TopVarDecl (VarDeclTypeNoInit (IntType, "d", 6)); TopVarDecl (VarDeclTypeInit (IntType, "e", PrimExp (IntLit ("4", Dec)), 7)); TopVarDecl (VarDeclNoTypeInit ("f", PrimExp (IntLit ("4", Dec)), 8)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([VarDeclStm (VarDeclTypeNoInit (IntType, "g", 11)); VarDeclStm (VarDeclTypeInit (IntType, "h", PrimExp (IntLit ("0", Dec)), 12)); VarDeclStm (VarDeclNoTypeInit ("i", PrimExp (IntLit ("0", Dec)), 13)); VarDeclStm (VarDeclNoTypeInit ("j", PrimExp (IntLit ("0", Dec)), 14)); VarDeclStm (VarDeclNoTypeInit ("j", PrimExp (IntLit ("4", Dec)), 15)); VarDeclStm (VarDeclNoTypeInit ("k", PrimExp (IntLit ("5", Dec)), 15)); VarDeclStm (VarDeclNoTypeInit ("l", PrimExp (IntLit ("6", Dec)), 15)); VarDeclStm (VarDeclTypeNoInit (IntType, "m", 16)); VarDeclStm (VarDeclTypeNoInit (IntType, "n", 16)); VarDeclStm (VarDeclTypeInit (IntType, "o", PrimExp (IntLit ("7", Dec)), 17)); VarDeclStm (VarDeclTypeInit (IntType, "p", PrimExp (IntLit ("8", Dec)), 17)); ], 18), 10)); ]))
;;

let type_decl _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/type_decl.go" in
  assert_equal ast (Program (Package "test", [TopTypeDecl (TypeDecl (IntType, "c", 3)); TopTypeDecl (TypeDecl (DefinedType ("c", None, 4), "d", 4)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([], 7), 6)); ]))
;;

let func_decl _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/func_decl.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("foo", [], Some (IntType), StmsBlock ([], 5), 4)); TopFuncDecl (FuncDecl ("bar", [("b", IntType); ("a", IntType); ("c", IntType); ], None, StmsBlock ([], 7), 6)); TopFuncDecl (FuncDecl ("bar", [("b", IntType); ("a", IntType); ("c", IntType); ], Some (IntType), StmsBlock ([], 9), 8)); TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([], 3), 2)); ]))
;;

let all_types _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/all_types.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([TypeDeclStm (TypeDecl (DefinedType ("b", None, 3), "a", 3)); TypeDeclStm (TypeDecl (ArrayType (IntType, PrimExp (IntLit ("0", Dec)), 4), "b", 4)); TypeDeclStm (TypeDecl (SliceType (IntType), "c", 5)); TypeDeclStm (TypeDecl (PointerType (IntType), "d", 6)); TypeDeclStm (TypeDecl (StructType ([("f", IntType); ("f", IntType); ("f", IntType); ("g", StructType ([("h", IntType); ], 10)); ], 7), "e", 7)); TypeDeclStm (TypeDecl (IntType, "i", 14)); TypeDeclStm (TypeDecl (FloatType, "j", 15)); TypeDeclStm (TypeDecl (StrType, "k", 16)); TypeDeclStm (TypeDecl (RuneType, "l", 17)); TypeDeclStm (TypeDecl (BoolType, "m", 18)); ], 19), 2)); ]))
;;

let bin_exp _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/bin_exp.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (Binop (PrimExp (IntLit ("1", Dec)), BPlus, PrimExp (IntLit ("1", Dec)), 3), 3); AssignStm (PrimExp (Var ("x", 4)), Binop (PrimExp (Var ("x", 4)), BPlus, PrimExp (IntLit ("1", Dec)), 4), 4); AssignStm (PrimExp (Var ("x", 5)), Binop (PrimExp (Var ("x", 5)), BPlus, PrimExp (IntLit ("1", Dec)), 5), 5); ], 6), 2)); ]))
;;

let unary_exp _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/unary_exp.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (PrimExp (IntLit ("1", Dec)), 3); ExpStm (Unary (UMinus, PrimExp (IntLit ("1", Dec)), 4), 4); ExpStm (Unary (BoolNOT, PrimExp (BoolLit true), 5), 5); ExpStm (Unary (UBinNOT, PrimExp (IntLit ("1", Dec)), 6), 6); ExpStm (Unary (Ref, PrimExp (Var ("x", 7)), 7), 7); ExpStm (Unary (DeRef, PrimExp (Var ("x", 8)), 8), 8); ], 9), 2)); ]))
;;
