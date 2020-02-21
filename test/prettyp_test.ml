open OUnit2
open Prettyp

let test_print_type _ =
  assert_equal "-" (binop_str (Ast.BMinus))
;;

