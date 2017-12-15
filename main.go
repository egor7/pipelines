package main

import "fmt"

// .PP 123
// .PP 456 .PP
// .PP 789

// gen generates
// a sequence of
// some numbers
func gen(n int) {
	fmt.Println("gen")
	{
		fmt.Println("gen2")
	}
}

// main is the entry point
func main() {

	// just call gen function
	{
		gen()
	}
}
