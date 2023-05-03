package main

import "fmt"

func main() {
	var n, q int
	fmt.Scan(&n, &q)

	events := make([][]int, q)

	for i := 0; i < q; i++ {
		events[i] = make([]int, 2)
		fmt.Scan(&events[i][0], &events[i][1])
	}

	players := make([]int, n)
	for i := 0; i < n; i++ {
		players[i] = 0
	}

	for _, event := range events {
		switch event[0] {
		case 1:
			players[event[1]-1]++
		case 2:
			players[event[1]-1] = 2
		case 3:
			if players[event[1]-1] == 2 {
				fmt.Println("Yes")
			} else {
				fmt.Println("No")
			}
		}
	}
}
