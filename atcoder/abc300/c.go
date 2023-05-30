package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func solve(i int, j int, grid [][]string, size int) int {
	if i-size < 0 || j-size < 0 || i+size >= len(grid) || j+size >= len(grid[0]) {
		return size
	}

	if grid[i-size][j-size] == "#" &&
		grid[i+size][j-size] == "#" &&
		grid[i-size][j+size] == "#" &&
		grid[i+size][j+size] == "#" {
		return solve(i, j, grid, size+1)
	} else {
		return size
	}
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()

	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	h, w := nextInt(), nextInt()

	grid := make([][]string, h)

	for i := 0; i < h; i++ {
		sc.Scan()
		line := sc.Text()

		grid[i] = make([]string, w)

		for j, c := range line {
			grid[i][j] = string(c)
		}
	}

	var ans []int
	if h < w {
		ans = make([]int, h+1)
	} else {
		ans = make([]int, w+1)
	}

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if grid[i][j] == "#" {
				size := solve(i, j, grid, 1)
				if 0 < size {
					ans[size-1]++
				}
			}
		}
	}

	strs := make([]string, len(ans)-1)

	for i := 1; i < len(ans); i++ {
		strs[i-1] = strconv.Itoa(ans[i])
	}
	fmt.Println(strings.Join(strs, " "))
}
