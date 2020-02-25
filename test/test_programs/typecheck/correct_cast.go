package test
type a int
func main() {
	type b int
	var x a
	var y b
	var z int
	x = a(y)
	x = a(z)
	y = b(x)
	y = b(z)
	z = int(x)
	z = int(y)
}