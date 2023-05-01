package main

import (
	"fmt"
	"unicode"
)

func main() {
	var s string
	fmt.Scan(&s)

	for i, c := range s {
		if unicode.IsUpper(c) {
			fmt.Println(i + 1)
			return
		}
	}
}
