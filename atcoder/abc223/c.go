package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]float64, n)
	b := make([]float64, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i], &b[i])
	}

	t := 0.0

	for i := 0; i < n; i++ {
		t += a[i] / b[i]
	}

	t = t / 2.0
	ans := 0.0

	for i := 0; i < n; i++ {
		tt := a[i] / b[i]

		if tt < t {
			t -= tt
			ans += a[i]
		} else {
			ans += b[i] * t
			fmt.Println(ans)
			return
		}
	}
}
