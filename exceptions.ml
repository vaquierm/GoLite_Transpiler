exception LexerError of string
(* Messge, line number, char numbers *)
exception UnsuportedError of string * int * ((int * int) option)
(* Messge, line number *)
exception SyntaxError of string * (int option)
(* Message, line number *)
exception TypeError of string * int

(* Warnings (message, line number) *)
type warning = Warning of string * int

(*
All steps of the compilers will add warnings to this reference that
will be analized by main at the end of the compilation
*)
let warnings = ref [];;

let new_warning (w: warning) =
  warnings := w :: (!warnings)
;;

(* Print all warnings that were accumulated *)
let print_warnings () =
  let print_warning w =
    match w with
    | Warning (msg, l) ->
      print_endline ("Line " ^ string_of_int l ^ "\nWarning: " ^ msg)
  in
  let rec print_warnings' ws =
    match ws with
    | [] -> ()
    | w::ws' -> print_warning w; print_warnings' ws'
  in
  warnings := List.sort (fun (Warning (_, l1)) (Warning (_, l2)) -> l1 - l2) (!warnings);
  print_warnings' (!warnings)
;;