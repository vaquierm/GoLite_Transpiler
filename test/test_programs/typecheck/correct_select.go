package test
type t struct {
	a int
	b struct {
		c int
	}
}
func main() {
	var e t
	x := e.b
	y := e.b.c
	z := e.a
}