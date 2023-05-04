package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			var a int
			fmt.Scan(&a)

			if a == 0 {
				fmt.Print(".")
			} else {
				fmt.Printf("%s", string(rune('A' - 1 + a)))
			}
		}

		fmt.Println()
	}
}
