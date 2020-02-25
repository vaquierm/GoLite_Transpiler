let build_ast filename =
  let lexbuf = Lexing.from_channel (open_in filename) in
  Parser.start Lexer.token lexbuf
;;

let build_weeded_ast filename =
  let ast = build_ast filename in
  Weeding.weed_program ast
;;