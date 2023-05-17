package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var in = bufio.NewScanner(os.Stdin)

func nextInt() int {
	in.Scan()

	i, err := strconv.Atoi(in.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	a := make([]int, n)
	b := make([]int, m)

	in.Split(bufio.ScanWords)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	for i := 0; i < m; i++ {
		b[i] = nextInt()
	}

	ai, bi := 0, 0
	ansA := make([]int, 0)
	ansB := make([]int, 0)

	for i := 0; i < m + n; i++ {
		if len(a) <= ai {
			ansB = append(ansB, i + 1)
			continue
		} else if len(b) <= bi {
			ansA = append(ansA, i + 1)
			continue
		} else if a[ai] < b[bi] {
			ai++
			ansA = append(ansA, i + 1)
		} else {
			bi++
			ansB = append(ansB, i + 1)
		}
	}
	for i := 0; i < n; i++ {
		fmt.Printf("%d ", ansA[i])

	}
	fmt.Println()

	for i := 0; i < m; i++ {
		fmt.Printf("%d ", ansB[i])
	}
	fmt.Println()
}
