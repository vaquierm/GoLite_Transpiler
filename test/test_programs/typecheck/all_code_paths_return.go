package test
func foo() int {
	if true {
		return 1
	}
	else {
		return 2
	}
}
func bar() {
	if true {
		return
	}
}
func boo() int {
	{
		return 1
	}
}
func far() int {
	for {
		return 1
	}
}
func main() {
}