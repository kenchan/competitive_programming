package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		var str string
		fmt.Scan(&str)

		switch str {
			case "and", "not", "that", "the", "you":
				fmt.Println("Yes")
				return
		}
	}

	fmt.Println("No")
}
