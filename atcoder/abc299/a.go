package main

import (
	"fmt"
	"regexp"
)

func main() {
	var (
		n int
		s string
	)

	fmt.Scan(&n)
	fmt.Scan(&s)

	r := regexp.MustCompile(`\|.*\*.*\|`)

	if r.MatchString(s) {
		fmt.Println("in")
	} else {
		fmt.Println("out")
	}
}
