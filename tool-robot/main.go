package main

import "fmt"

func seques() func() int {
	var x int
	return func() int {
		x++
		return x * x
	}
}

func main() {
	f := seques()
	fmt.Println(f())
	fmt.Println(f())

	fmt.Println(seques()())
	fmt.Println(seques()())
}
