package main

import (
	"fmt"
)

func main() {
	var (
		n int
		d int
	)

	fmt.Scan(&n, &d)

	t := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&t[i])
	}

	prev := 0

	for i, v := range t {
		if i == 0 {
			prev = v
			continue
		}
		if v-prev <= d {
			fmt.Println(v)
			return
		}
		prev = v
	}

	fmt.Println("-1")
}
