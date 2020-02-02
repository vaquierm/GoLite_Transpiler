let lexbuf = Lexing.from_channel stdin in
try
  print_string "Parsing file...\n";
  let exp = Parser.start Lexer.token lexbuf in 
  ()
with
  | Invalid_argument _ -> print_endline ("Usage: " ^ Sys.argv.(0) ^ " 3 4 5")
  | Failure msg        -> print_endline ("Failure in " ^ msg)
  | Parser.Error       -> print_endline "Parse error"
  | End_of_file        -> print_endline "Parse error: unexpected end of string"
