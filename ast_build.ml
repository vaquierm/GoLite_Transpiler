let build_ast filename =
  let lexbuf = Lexing.from_channel (open_in filename) in
  Parser.start Lexer.token lexbuf
;;