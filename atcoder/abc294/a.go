package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		var m int
		fmt.Scan(&m)

		if m % 2 == 0 {
			fmt.Printf("%d ", m)
		}
	}
}
