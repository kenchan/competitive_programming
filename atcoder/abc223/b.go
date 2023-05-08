package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	min, max := s, s

	for i := 0; i < len(s); i++ {
		s = s[1:] + string(s[0])

		if s < min {
			min = s
		} else if s > max {
			max = s
		}
	}

	fmt.Println(min)
	fmt.Println(max)
}
