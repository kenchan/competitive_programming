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
	in.Split(bufio.ScanWords)

	n, x := nextInt(), nextInt()

	a := make(map[int]bool)

	for i := 0; i < n; i++ {
		num := nextInt()
		a[num] = true
	}

	for k, _ := range a {
		aj := x + k

		ans := a[aj]

		if ans {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
