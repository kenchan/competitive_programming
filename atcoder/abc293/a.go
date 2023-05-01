package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	ans := make([]string, len(s))

	chars := strings.Split(s, "")

	for i, c := range chars {
		if i % 2 == 0 {
			ans[i + 1] = c
		} else {
			ans[i - 1] = c
		}

	}

	fmt.Println(strings.Join(ans, ""))
}
