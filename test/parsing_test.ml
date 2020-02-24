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

let literal_exp _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/literal_exp.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (PrimExp (Var ("x", 3)), 3); ExpStm (PrimExp (IntLit ("1", Dec)), 4); ExpStm (PrimExp (IntLit ("", Oct)), 5); ExpStm (PrimExp (IntLit ("1", Hex)), 6); ExpStm (PrimExp (IntLit ("1", Bin)), 7); ExpStm (PrimExp (BoolLit true), 8); ExpStm (PrimExp (BoolLit false), 9); ExpStm (PrimExp (StrLit ("Hello there", false)), 10); ExpStm (PrimExp (StrLit ("Hello there", true)), 11); ExpStm (PrimExp (RuneLit "x"), 12); ], 13), 2)); ]))
;;

let select_index _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/select_index.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (PrimExp (SelectExp (SelectExp (Var ("x", 3), "y", 3), "z", 3)), 3); ExpStm (PrimExp (IndexExp (Var ("x", 4), PrimExp (IntLit ("1", Dec)), 4)), 4); ExpStm (PrimExp (SliceExp (Var ("x", 5), PrimExp (IntLit ("0", Dec)), PrimExp (IntLit ("1", Dec)), None, 5)), 5); ExpStm (PrimExp (SliceExp (Var ("x", 6), PrimExp (IntLit ("1", Dec)), PrimExp (LenExp (Var ("x", 6), 6)), None, 6)), 6); ExpStm (PrimExp (SliceExp (Var ("x", 7), PrimExp (IntLit ("1", Dec)), PrimExp (IntLit ("1", Dec)), None, 7)), 7); ExpStm (PrimExp (SliceExp (Var ("x", 8), PrimExp (IntLit ("0", Dec)), PrimExp (IntLit ("1", Dec)), Some (PrimExp (IntLit ("1", Dec))), 8)), 8); ExpStm (PrimExp (IndexExp (SelectExp (Var ("x", 9), "y", 9), PrimExp (IntLit ("1", Dec)), 9)), 9); ], 10), 2)); ]))
;;

let cast_func_call _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/cast_func_call.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (PrimExp (FuncCall ("foo", [], 3)), 3); ExpStm (PrimExp (UnsureTypeFuncCall ("foo", PrimExp (IntLit ("1", Dec)), 4)), 4); ExpStm (PrimExp (FuncCall ("foo", [PrimExp (IntLit ("1", Dec)); PrimExp (IntLit ("2", Dec)); ], 5)), 5); ], 6), 2)); ]))
;;

let built_in_func _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/built_in_func.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([ExpStm (PrimExp (AppendExp (Var ("x", 3), PrimExp (IntLit ("1", Dec)), 3)), 3); Print (PrimExp (IntLit ("1", Dec)), false, 4); Print (PrimExp (IntLit ("1", Dec)), true, 5); ExpStm (PrimExp (LenExp (Var ("x", 6), 6)), 6); ExpStm (PrimExp (CapExp (Var ("x", 7), 7)), 7); ], 8), 2)); ]))
;;

let body_stm _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/body_stm.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([BlockStm (StmsBlock ([ExpStm (PrimExp (Var ("x", 4)), 4); ExpStm (PrimExp (Var ("y", 5)), 5); ExpStm (PrimExp (Var ("z", 6)), 6); ], 7)); ], 8), 2)); ]))
;;

let tag_stm _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/tag_stm.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([Return (None, 3); Return (Some (PrimExp (IntLit ("1", Dec))), 4); Break 5; Continue 6; ], 7), 2)); ]))
;;

let if_stm _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/if_stm.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([BlockStm (StmsBlock ([VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (FloatLit 0.), 3)); IfStm (Binop (PrimExp (Var ("x", 3)), LT, PrimExp (FloatLit 1.), 3), StmsBlock ([], 4), Some (StmsBlock ([IfStm (Binop (PrimExp (Var ("x", 4)), LT, PrimExp (FloatLit 2.), 4), StmsBlock ([], 5), Some (StmsBlock ([], 6)), 4); ], 6)), 3); ], 6)); IfStm (Binop (PrimExp (Var ("x", 7)), LT, PrimExp (FloatLit 3.), 7), StmsBlock ([], 8), None, 7); BlockStm (StmsBlock ([VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (FloatLit 4.), 9)); IfStm (Binop (PrimExp (Var ("x", 9)), LT, PrimExp (FloatLit 5.), 9), StmsBlock ([], 10), None, 9); ], 10)); BlockStm (StmsBlock ([VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (FloatLit 6.), 11)); IfStm (Binop (PrimExp (Var ("x", 11)), LT, PrimExp (FloatLit 7.), 11), StmsBlock ([], 12), Some (StmsBlock ([], 13)), 11); ], 13)); BlockStm (StmsBlock ([VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (FloatLit 8.), 14)); IfStm (Binop (PrimExp (Var ("x", 14)), LT, PrimExp (FloatLit 9.), 14), StmsBlock ([], 15), Some (StmsBlock ([BlockStm (StmsBlock ([VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (FloatLit 10.), 15)); IfStm (Binop (PrimExp (Var ("x", 15)), LT, PrimExp (FloatLit 11.), 15), StmsBlock ([], 16), None, 15); ], 16)); ], 16)), 14); ], 16)); ], 17), 2)); ]))
;;

let for_stm _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/for_stm.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([WhileStm (None, StmsBlock ([ExpStm (PrimExp (Var ("x", 4)), 4); ExpStm (PrimExp (Var ("y", 5)), 5); ], 6), 3); BlockStm (StmsBlock ([VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (IntLit ("0", Dec)), 7)); ForStm (None, Some (Binop (PrimExp (Var ("x", 7)), LT, PrimExp (IntLit ("1", Dec)), 7)), Some (AssignStm (PrimExp (Var ("x", 7)), Binop (PrimExp (Var ("x", 7)), BPlus, PrimExp (IntLit ("1", Dec)), 7), 7)), StmsBlock ([], 8), 7); ], 8)); WhileStm (None, StmsBlock ([], 10), 9); BlockStm (StmsBlock ([VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (IntLit ("0", Dec)), 11)); ForStm (None, None, Some (AssignStm (PrimExp (Var ("x", 11)), Binop (PrimExp (Var ("x", 11)), BPlus, PrimExp (IntLit ("1", Dec)), 11), 11)), StmsBlock ([], 12), 11); ], 12)); ], 13), 2)); ]))
;;

let simple_stm _ =
  let ast = Ast_build.build_ast "test/test_programs/parsing/simple_stm.go" in
  assert_equal ast (Program (Package "test", [TopFuncDecl (FuncDecl ("main", [], None, StmsBlock ([AssignStm (PrimExp (Var ("x", 3)), Binop (PrimExp (Var ("x", 3)), BPlus, PrimExp (IntLit ("1", Dec)), 3), 3); AssignStm (PrimExp (Var ("x", 4)), PrimExp (IntLit ("1", Dec)), 4); AssignStm (PrimExp (Var ("x", 5)), Binop (PrimExp (Var ("x", 5)), BPlus, PrimExp (IntLit ("1", Dec)), 5), 5); VarDeclStm (VarDeclNoTypeInit ("x", PrimExp (IntLit ("1", Dec)), 6)); ], 7), 2)); ]))
;;