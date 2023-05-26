package main

import (
	"fmt"
)

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	ans := make([]string, h)

	for i := 0; i < h; i++ {
		var s string
		fmt.Scan(&s)

		slice := []rune(s)

		for j := 0; j < w-1; j++ {
			if slice[j] == 'T' && slice[j+1] == 'T' {
				slice[j] = 'P'
				slice[j+1] = 'C'
			}
		}

		ans[i] = string(slice)
	}

	for i := 0; i < h; i++ {
		fmt.Println(ans[i])
	}
}
