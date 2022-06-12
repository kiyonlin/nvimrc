package main

func main() {
	print("hello golang in nvim")
	for i := 0; i < 5; i++ {
		print(i, i+1)
	}
	print(122)
}

type A struct {
	age  int
	name string
}

func sum(a, b int) int {
	return a + b
}
