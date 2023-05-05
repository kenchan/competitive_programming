package main

import "fmt"

func rotate(a [][]int) [][]int {
	r := make([][]int, len(a))
	for i := 0; i < len(a); i++ {
		r[i] = make([]int, len(a[i]))
	}

	for i := 0; i < len(a); i++ {
		for j := 0; j < len(a); j++ {
			r[len(a) - j - 1][i] = a[i][j]
		}
	}
	return r
}

func main() {
	var n int
	fmt.Scan(&n)

	a := make([][]int, n)
	b := make([][]int, n)

	for i := 0; i < n; i++ {
		a[i] = make([]int, n)
		for j := 0; j < n; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	for i := 0; i < n; i++ {
		b[i] = make([]int, n)
		for j := 0; j < n; j++ {
			fmt.Scan(&b[i][j])
		}
	}

	for i := 0; i < 4; i++ {
		a = rotate(a)
		ans := true
		for i := 0; i < n; i++ {
			for j := 0; j < n; j++ {
				if a[i][j] == 1 && b[i][j] == 0 {
					ans = false
				}
			}
		}

		if ans {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
