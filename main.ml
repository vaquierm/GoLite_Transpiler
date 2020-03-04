try
    if not (Array.length Sys.argv = 2) then
      failwith "There must be exaclty one command line argument which is the file path of the file to be compiled";
    (* Read the file *)
    let filename = Sys.argv.(1) in
    let program = Ast_build.build_ast filename in
    print_endline "\nOriginal program";
    print_string (Prettyp.program_str program);
    print_endline (Ast.program_ast_str program);
    let weeded_prog = print_endline "\nWeeding..."; Weeding.weed_program program in
    print_endline "\nWeeded program";
    print_string (Prettyp.program_str weeded_prog);
    print_endline (Ast.program_ast_str weeded_prog);
    print_endline "\nTypechecking...";
    Typecheck.typecheck_program weeded_prog;
    Exceptions.print_warnings ();
    print_endline("\nC++ Program");
    print_endline (Emit.program_emit weeded_prog);
with
  | Failure msg -> print_endline ("Unexpected error: " ^ msg)
  | Exceptions.LexerError msg -> print_endline msg
  | Exceptions.UnsuportedError (msg, line, char_opt) -> 
    let char_pos = begin match char_opt with
    | None -> ""
    | Some (start_pos, end_pos) -> ", charachters " ^ string_of_int start_pos ^ "-" ^ string_of_int end_pos
    end in 
      let text = "Line " ^ string_of_int line ^ char_pos
      in
        print_endline (text ^ "\nUnsupported Error: " ^ msg)
  | Parser.Error -> 
    let break_text = !(Lexer.last_text) in
      let pos_text = Lexer.get_error_pos_mgs () in
        print_endline (pos_text ^ "\nSyntax Error: Unexpected '" ^ break_text ^ "'")
  | Exceptions.SyntaxError (msg, line_opt) ->
    let line_text = begin match line_opt with
    | None -> ""
    | Some line -> "Line " ^ string_of_int line ^ "\n"
    end in
      print_endline (line_text ^ "Syntax Error: " ^ msg)
  | Exceptions.TypeError (msg, line) ->
    print_endline ("Line " ^ string_of_int line ^ "\nType Error: " ^ msg)