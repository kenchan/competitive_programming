package main

import (
	"fmt"
	"strings"
)

func main() {
	ss := make([][]string, 8)

	for i := 0; i < 8; i++ {
		var s string
		fmt.Scan(&s)
		ss[i] = strings.Split(s, "")
	}

	ai, aj := 0, 0

	for i := 0; i < 8; i++ {
		for j := 0; j < 8; j++ {
			if ss[i][j] == "*" {
				ai, aj = i, j
			}
		}
	}

	fmt.Printf("%c%d\n", 'a' + aj,  8 - ai)
}
