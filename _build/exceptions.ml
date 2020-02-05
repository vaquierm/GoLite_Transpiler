exception LexerError of string
(* Messge, line number, char numbers *)
exception UnsuportedError of string * int * ((int * int) option)
(* Messge, line number *)
exception SyntaxError of string * (int option)