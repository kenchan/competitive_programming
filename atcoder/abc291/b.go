package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	x := make([]int, 5 * n)
	for i := 0; i < 5 * n; i++ {
		fmt.Scan(&x[i])
	}

	sort.Ints(x)

	sum := 0
	for _, v := range x[n:len(x) - n] {
		sum += v
	}

	fmt.Println(float64(sum) / float64(len(x[n:len(x) - n])))

}
