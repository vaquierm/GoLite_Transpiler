let lexbuf = Lexing.from_channel stdin in
try
  print_string "Parsing file...\n";
  let exp = Parser.start Lexer.token lexbuf in 
  ()
with
  | Failure msg        -> print_endline ("Failure in " ^ msg)
  | Parser.Error       -> 
    let break_pos = !(Lexer.last_pos) in 
      let break_line = break_pos.Lexing.pos_lnum in
        let break_col_end = break_pos.Lexing.pos_cnum - break_pos.Lexing.pos_bol in
          let break_text = !(Lexer.last_text) in
            let break_col_begin = break_col_end - (String.length break_text) in
          print_endline ("Line " ^ string_of_int break_line ^ ", charachters " ^ string_of_int break_col_begin ^ "-" ^ string_of_int break_col_end ^ ": Syntax Error")