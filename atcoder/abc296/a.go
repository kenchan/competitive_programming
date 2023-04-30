package main

import "fmt"

func main() {
	var (
		a int
		s string
	)

	fmt.Scan(&a, &s)

	prev := 'X'

	for _, v := range s {
		if prev == v {
			fmt.Println("No")
			return
		}
		prev = v
	}

	fmt.Println("Yes")
}
