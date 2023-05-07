package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := 0

	for x := 1; x < n; x++ {
		y := n - x

		var xPair, yPair int

		for a := 1; a*a <= x; a++ {
			if x%a == 0 {
				if a*a == x {
					xPair++
				} else {
					xPair += 2
				}
			}
		}

		for c := 1; c*c <= y; c++ {
			if y%c == 0 {
				if c*c == y {
					yPair++
				} else {
					yPair += 2
				}
			}
		}

		ans += xPair * yPair
	}

	fmt.Println(ans)
}
