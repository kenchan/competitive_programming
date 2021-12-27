package main

import "fmt"

func main() {
	var ans = 0
	var x, y int
	fmt.Scan(&x, &y)

	for x < y {
		x += 10
		ans++
	}

	fmt.Println(ans)
}
