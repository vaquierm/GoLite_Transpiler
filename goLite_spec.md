# GoLite

goLite is a strict subset of [golang](https://golang.org/). Any goLite source code is valid golang code.

### Operators

Arithmetic

````go
+ - * / % & | ^ << >> &^ 
+= -= *= /= %= &= |= ^= <<= >>= &^=
++ --
````

Logical

````go
&& || !
````

Comparaison

````go
== != < > <= >=
````

### Comments

_Note: comments are not transfered to the transpiled file_

Line comments

````go
// line comment
````

Block comments

````go
/*
Multiple line
Block comment
*/
````

### Types

````
int             // integer
float32         // float
bool            // boolean
rune            // rune (char)
string          // string
[]T             // slice
[n]T            // array of size n
*T              // pointer
struct {...}    // struct
````

### Literals

string

````go
"Hello World!"    // Regular string
`Hello World!`    // Raw string
````

int

````go
10                // decimal int
010               // octal int
0xF1              // hex int
0b1010011         // binary int
````

rune (Only regular runes are supported, no unicode)

````go
'A'               // rune
````

bool

````go
true              // true
false             // false
````

Slice and array literals are not supported, they need to be initialized line by line.

### Package declaration

package declaration is needed at the start of the program

````go
package pakage_name
````

### Variable declarations

````go
var x T           // Var decl with type T and no initialisation
var x int = 4     // Var decl with type and initialization. (Types need to match)
var x = 4         // Var decl with no type specified (The type is infered from the expression)
x := 4            // Same as previous declaration (Not supported for top level declarations)
````

Declare multiple variables at once

````go                    // multiple declarations can be made on the same line
var x, y, z T
var x, y, z = 1, 2, 3
var x, y, z int = 1, 2, 3

var (                     // The var keyword can be distributed
  x int
  y, z int
  a, b = 1, 2
)
````

Constant declarations are not supported.

### Type declarations

````go
type x T          // Type x now has underlying type T

type (            // The type keyword can be distributed
  x T1
  y T2
)
````

Type aliasing not supported

### Function declarations

````go
/*
Function with name "func_name"
inputs: x of type T1, y of type T1, z of type T2
output: type T3. This is optional and can be left blank if the function returns nothing
*/
func func_name(x T1, y T1, z T2) T3 {
  // Body sataements
}

// This declaration is a short hand equivalent
func func_name(x y T1, z T2) T3 {
  // Body sataements
}
````


### Slices

Slices are supported partially.
Slice literals are not supported but they can be initialized like this

````go
var x []int
x = append(x, 1)
x = append(x, 2)
x = append(x, 3)
````

The sliceing is however supported

````go
var y = x[:2]
var z = x[1:3:2]
```

The _len_ and _cap_ functions are supported as well

````go
var slice_length = len(x)
var slice_capacity = cap(x)
````

# Arrays

Array literals are not supported but they can be initialized line by line

````go
var x [3]int
x[0] = 1
x[1] = 2
x[2] = 3
````

The length of the array can be obtaned using the _len_ function

````go
var array_length = len(x)
````



