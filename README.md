# GoLite Transpiler

This project is a transpiler that converts goLite (A strict subset of [golang](https://golang.org/)) source code into [C++](http://www.cplusplus.com/) source code.

The transpiler is used in OCaml and the parser was built using **Ocamllex** (which comes with the OCaml distribution) and [**Menhir**](http://gallium.inria.fr/~fpottier/menhir/manual.html) (A scanner generator similar to [bison](https://www.gnu.org/software/bison/manual/bison.html) which is compatible with C)

## How to run it!

**1. Clone the repo**

````
$ git clone https://github.com/vaquierm/GoLite_Compiler.git
````

**2. Install OCaml**

````
$ sudo apt install ocaml
````

**3. Install opam (to install the testing package)**

````
$ add-apt-repository ppa:avsm/ppa
$ sudo apt install opam
$ opam init
````

**4. Install [ounit](https://github.com/gildor478/ounit)** (for tests)

````
$ opam install ounit2
````

**5. Run all tests** (Hopefully they pass)

````
$ make test
````

**6. Compile the transpiler**

````
$ make
````

**7. Transpile a goLite file** (Insert the filepath of the goLite file you want to transpile into ````<goLite_file>.go````)

````
$ ./goLite_transpiler <goLite_file>.go
````

- If there are syntax or type errors a message will be displayed.
- If everything was fine, a file ````<goLite_file>.cpp```` which contains the translated program will be generated.

**8. Compile and run the C++ file** (if you want)

````
$ g++ <goLite_file>.cpp -o <goLite_file>.out <goLite_file>.cpp
$ ./<goLite_file>.out
````

**9. Clean up the repo** (deletes all build files and generated transpiled files)

````
$ make clean
````

### GoLite
GoLite is a strict subset of the [golang](https://golang.org/) language.

Supported types:
- int
- float32
- bool
- rune
- string

