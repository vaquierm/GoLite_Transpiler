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
    "Weeding/left hand side not assignable" >:: Weeding_test.lhs_not_assignable;
    "Weeding/unreachable after return" >:: Weeding_test.unreachable_after_return;
    "Weeding/unreachable after return block" >:: Weeding_test.unreachable_after_return_block;
    "Weeding/unreachable after return if" >:: Weeding_test.unreachable_after_return_if;
    "Weeding/unreachable after return while true" >:: Weeding_test.unreachable_after_return_while_true;
    "Weeding/resolve defined type var decl" >:: Weeding_test.resolve_definedT_var_decl;
    "Weeding/resolve defined type in struct" >:: Weeding_test.resolve_definedT_struct;
    "Weeding/resolve defined type in func" >:: Weeding_test.resolve_definedT_func;
    "Weeding/resolve defined type in cast" >:: Weeding_test.resolve_definedT_cast;
    "Weeding/resolve defined type in slices, arrays, pointers" >:: Weeding_test.resolve_definedT_types;

    "Typecheck/cannot infer non type in var decl" >:: Typecheck_test.var_decl_cannot_infer;
    "Typecheck/field not found" >:: Typecheck_test.field_not_found;
    "Typecheck/cannot select from type" >:: Typecheck_test.cannot_select_t;
    "Typecheck/correct select" >:: Typecheck_test.correct_select;
    "Typecheck/cannot index" >:: Typecheck_test.cannot_index;
    "Typecheck/non int index" >:: Typecheck_test.non_int_index;
    "Typecheck/correct index" >:: Typecheck_test.correct_index;
    "Typecheck/func call with wrong number of args" >:: Typecheck_test.func_call_n_args_wrong;
    "Typecheck/func call with wrong type" >:: Typecheck_test.func_call_wrong_type;
    "Typecheck/correct function call" >:: Typecheck_test.correct_func_call;
    "Typecheck/non int index slice" >:: Typecheck_test.slice_index_non_int;
    "Typecheck/cannot slice non slice type" >:: Typecheck_test.cannot_slice_t;
    "Typecheck/correct slice" >:: Typecheck_test.slice_correct;
    "Typecheck/incorect type in len" >:: Typecheck_test.len_incorrect_t;
    "Typecheck/incorect type in cap" >:: Typecheck_test.cap_incorrect_t;
    "Typecheck/append non slice" >:: Typecheck_test.append_non_slice;
    "Typecheck/append type mismatch" >:: Typecheck_test.append_type_mismatch;
    "Typecheck/len and cap append functions correct" >:: Typecheck_test.len_cap_append_correct;
    "Typecheck/cannot cast type" >:: Typecheck_test.cannot_cast_type;
    "Typecheck/correct cast" >:: Typecheck_test.correct_cast;

  ]

let () =
  run_test_tt_main suite