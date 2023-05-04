package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string
	fmt.Scan(&str)

	s := strings.Split(str, "")

	bi := []int{}
	ri := []int{}
	ki := 0

	for i, c := range s {
		switch c {
		case "B":
			bi = append(bi, i)
		case "R":
			ri = append(ri, i)
		case "K":
			ki = i
		}
	}

	ans1 := (bi[0] + bi[1]) % 2 == 1
	ans2 := ri[0] < ki && ki < ri[1]

	if ans1 && ans2 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
