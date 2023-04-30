package main

import "fmt"

func main() {
	var (
		n int
		s string
	)
	o := false
	x := false

	fmt.Scan(&n)
	fmt.Scan(&s)

	for _, c := range s {
		if c == 'x' {
			x = true
		} else if c == 'o' {
			o = true
		}
	}

	if o && !x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
