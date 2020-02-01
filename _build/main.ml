let lexbuf = Lexing.from_channel stdin in
try
  (* let xval = int_of_string (Sys.argv.(1)) in
  let yval = int_of_string (Sys.argv.(2)) in
  let zval = int_of_string (Sys.argv.(3)) in
  let env  = (xval,yval,zval) in *)
  let exp = Parser.start Lexer.token lexbuf in  (* parse input *)
  (* let () = Pprint.print_exp exp in              (* pretty print *)
  let () = print_newline () in
  print_int (Eval.eval_exp exp env)             (* evaluate *) *)
  ()
with
  | Invalid_argument _ -> print_endline ("Usage: " ^ Sys.argv.(0) ^ " 3 4 5")
  | Failure msg        -> print_endline ("Failure in " ^ msg)
  | Parser.Error       -> print_endline "Parse error"
  | End_of_file        -> print_endline "Parse error: unexpected end of string"
