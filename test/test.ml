open OUnit2

let suite =
  "Tests" >::: [
    "Parsing/Unsupported type" >:: Parsing_test.invalid_comma;
    "Parsing/Unexpected char" >:: Parsing_test.unexpected_char;
    "Parsing/missing main" >:: Parsing_test.missing_main;
    "Parsing/unsupported imports" >:: Parsing_test.unsupported_imports;
    "Parsing/unsupported type alias" >:: Parsing_test.unsupported_type_alias;
    "Parsing/assignment mismatch" >:: Parsing_test.assignment_mismatch;
    "Parsing/assignment match" >:: Parsing_test.assignment_match;
    "Parsing/unsupported map" >:: Parsing_test.unsupported_map;
    "Parsing/unsupported interface" >:: Parsing_test.unsupported_interface;
    "Parsing/left hand side of short assign must be ID" >:: Parsing_test.lhs_short_id;

  ]

let () =
  run_test_tt_main suite