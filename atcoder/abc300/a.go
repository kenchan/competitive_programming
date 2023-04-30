package main

import "fmt"

func main() {
	var n, a, b, c int
	fmt.Scan(&n, &a, &b)

	for i := 0; i < n; i++ {
		fmt.Scan(&c)

		if a+b == c {
			fmt.Println(i + 1)
			return
		}
	}
}
