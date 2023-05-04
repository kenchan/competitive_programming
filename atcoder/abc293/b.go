package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	called := make([]bool, n)

	for i := 0; i < n; i++ {
		var x int
		fmt.Scan(&x)

		if !called[i] {
			called[x - 1] = true
		}
	}

	count := 0
	ans := make([]string, 0)

	for i, v := range called {
		if !v {
			count++
			ans = append(ans, strconv.Itoa(i + 1))
		}
	}

	fmt.Println(count)
	fmt.Println(strings.Join(ans, " "))
}
