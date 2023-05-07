package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := 0

	for a := 1; a < n; a++ {
		for b := 1; b < n; b++ {
			if a * b >= n {
				break;
			}
			for c := 1; c < n; c++ {
				mod := (n - (a * b)) % c
				if mod == 0 {
					ans++
				}
			}
		}
	}

	fmt.Println(ans)
}
