package main

import (
	"fmt"
	"strconv"
	"strings"
)

func abs(x, y int) int {
	if x > y {
		return x - y
	}
	return y - x
}

func main() {
	var r, c int
	var s string
	fmt.Scan(&r, &c)

	b := make([][]string, r)
	b2 := make([][]bool, r)

	for i := 0; i < r; i++ {
		b2[i] = make([]bool, c)
		for j := 0; j < c; j++ {
			b2[i][j] = false
		}
	}

	for i := 0; i < r; i++ {
		fmt.Scan(&s)
		b[i] = strings.Split(s, "")
	}


	for i := 0; i < r; i++ {
		for j := 0; j < c; j++ {
			x, err := strconv.Atoi(b[i][j])
			if err != nil {
				continue;
			}

			for i2 := 0; i2 < r; i2++ {
				for j2 := 0; j2 < c; j2++ {
					if abs(i, i2) + abs(j, j2) <= x {
						b2[i2][j2] = true
					}
				}
			}
		}
	}

	for i := 0; i < r; i++ {
		for j := 0; j < c; j++ {
			if b2[i][j] {
				fmt.Print(".")
			} else {
				fmt.Print(b[i][j])
			}
		}
		fmt.Println()
	}
}
