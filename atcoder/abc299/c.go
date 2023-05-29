package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	ans := 0;
	dango := 0;

	for _, c := range s {
		if c == '-' {
			if ans < dango {
				ans = dango
			}
			dango = 0
		} else {
			dango++
		}
	}

	if dango != len(s) && ans < dango {
		ans = dango
	} else if ans == 0 {
		ans = -1
	}

	fmt.Println(ans)
}
