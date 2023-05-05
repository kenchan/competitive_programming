package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	n, t := 0, 0

	fmt.Scan(&n, &t)

	c := make([]int, n)
	r := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Fscan(in, &c[i])
	}
	for i := 0; i < n; i++ {
		fmt.Fscan(in, &r[i])
	}

	max_t := 0
	max_t_i := -1
	max_p1 := 0
	max_p1_i := -1

	for i := 0; i < n; i++ {
		if c[i] == t && r[i] > max_t {
			max_t = r[i]
			max_t_i = i
		}
		if c[i] == c[0] && r[i] >= max_p1 {
			max_p1 = r[i]
			max_p1_i = i
		}
	}

	if max_t_i > -1 {
		fmt.Println(max_t_i + 1)
	} else {
		fmt.Println(max_p1_i + 1)
	}
}
