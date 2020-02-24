open OUnit2

let suite =
  "Tests" >::: [
    "Parsing/Unsupported type" >:: Parsing_test.invalid_comma;
    "Parsing/Unexpected char" >:: Parsing_test.unexpected_char;
    "Parsing/missing main" >:: Parsing_test.missing_main;
    "Parsing/unsupported imports" >:: Parsing_test.unsupported_imports;
    "Parsing/unsupported type alias" >:: Parsing_test.unsupported_type_alias;
    "Parsing/assignment mismatch" >:: Parsing_test.assignment_mismatch;
    "Parsing/unsupported map" >:: Parsing_test.unsupported_map;
    "Parsing/unsupported interface" >:: Parsing_test.unsupported_interface;
    "Parsing/left hand side of short assign must be ID" >:: Parsing_test.lhs_short_id;
    "Parsing/var decl" >:: Parsing_test.var_decl;
    "Parsing/type decl" >:: Parsing_test.type_decl;
    "Parsing/func decl" >:: Parsing_test.func_decl;
    "Parsing/all types" >:: Parsing_test.all_types;
    "Parsing/bin exp" >:: Parsing_test.bin_exp;
    "Parsing/unary exp" >:: Parsing_test.unary_exp;
    "Parsing/literal exp" >:: Parsing_test.literal_exp;
    "Parsing/select index" >:: Parsing_test.select_index;
    "Parsing/cast func call" >:: Parsing_test.cast_func_call;
    "Parsing/body stm" >:: Parsing_test.body_stm;
    "Parsing/tag stm" >:: Parsing_test.tag_stm;
    "Parsing/if stm" >:: Parsing_test.if_stm;
    "Parsing/for stm" >:: Parsing_test.for_stm;
    "Parsing/simple stm" >:: Parsing_test.simple_stm;
    
    "Weeding/non constant array size" >:: Weeding_test.non_constant_array_size;
    "Weeding/same field name struct" >:: Weeding_test.same_field_names_struct;
    "Weeding/cast none" >:: Weeding_test.cast_none;
    "Weeding/unecessary cast" >:: Weeding_test.unecessary_cast;
    "Weeding/init not type none" >:: Weeding_test.init_no_type_none;
    "Weeding/short assign loop inc" >:: Weeding_test.short_assign_loop_inc;
    "Weeding/break not in loop" >:: Weeding_test.break_not_in_loop;
    "Weeding/continue not in loop" >:: Weeding_test.continue_not_in_loop;
    "Weeding/unreachable after return" >:: Weeding_test.unreachable_after_return;
    "Weeding/unreachable after return block" >:: Weeding_test.unreachable_after_return_block;
    "Weeding/unreachable after return if" >:: Weeding_test.unreachable_after_return_if;
    "Weeding/unreachable after return while true" >:: Weeding_test.unreachable_after_return_while_true;
    "Weeding/resolve defined type var decl" >:: Weeding_test.resolve_definedT_var_decl;
    "Weeding/resolve defined type in struct" >:: Weeding_test.resolve_definedT_struct;
    "Weeding/resolve defined type in func" >:: Weeding_test.resolve_definedT_func;
    "Weeding/resolve defined type in cast" >:: Weeding_test.resolve_definedT_cast;
    "Weeding/resolve defined type in slices, arrays, pointers" >:: Weeding_test.resolve_definedT_types;

  ]

let () =
  run_test_tt_main suite