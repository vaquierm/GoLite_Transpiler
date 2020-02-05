let lexbuf = Lexing.from_channel stdin in
try
  let program = Parser.start Lexer.token lexbuf in 
    Prettyp.print_program program
with
  | Failure msg -> print_endline msg
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