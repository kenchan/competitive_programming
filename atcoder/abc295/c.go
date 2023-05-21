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


func tally(array []int) map[int]int {
	counts := make(map[int]int)

	for _, num := range array {
		counts[num]++
	}

	return counts
}

func main() {
	in.Split(bufio.ScanWords)

	n := nextInt()

	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	counts := tally(a)

	ans := 0

	for _, v := range counts {
		ans += v / 2
	}

	fmt.Println(ans)
}
