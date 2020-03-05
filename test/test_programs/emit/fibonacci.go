package main

type fib_num int

func fib(n int) fib_num {
	if n < 2 {
		return fib_num(1)
	}
	return fib(n - 1) + fib(n - 2)
}

func main() {
	var fib_nums [10]fib_num

	for i := 0; i < len(fib_nums); i++; {
		fib_nums[i] = fib(i)
	}

	for i := 0; i < len(fib_nums); i++; {
		println(fib_nums[i])
	}
}