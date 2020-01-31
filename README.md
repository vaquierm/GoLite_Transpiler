XYZ expressions
===============

This is a simple example of how ocamllex and menhir can be used to
build and process an abstract syntax tree (AST) for a language.

It was developed as part of (a previous version of) the undergraduate
compiler course at Aarhus University.

The AST is defined in ast.ml. It is built recursively in the action
statements of each grammar production in parser.mly, and it is
traversed in both pprint.ml and eval.ml.


Supported syntax:

    exp ::=  x  |  y  |  z
         |  exp + exp
         |  exp - exp
         |  exp * exp
         |  exp / exp
         |  ( exp )


To build:
---------

    $ make


To run:
-------

Example 1:

    $ ./xyz 3 4 5   (pass a command line value for variable x,y, and z, respectively)
    x + y - z       (then press return and Ctrl-D on Linux or MacOSX)
    ((x+y)-z)
    2$ 

(hence the string 'x + y - z' is accepted, it is parsed as ((x+y)-z),
and it evaluates to 2 when x=3, y=4, and z=5)


Example 2:

    $ ./xyz 3 4 5
    x + y--
    Parser.Error
    $

(hence the string 'x + y--' is rejected by the parser)


Example 3:

    $ ./xyz 3 4 5
    2 + 2
    Failure in lexing: empty token
    $

(hence the string '2 + 2' is rejected by the scanner)
