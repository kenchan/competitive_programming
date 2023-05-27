package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
    sc.Split(bufio.ScanWords)
		_, m, h, k := nextInt(), nextInt(), nextInt(), nextInt()
		sc.Scan()
		s := sc.Text()

		xy := make(map[string] bool)
		for i := 0; i < m; i++ {
			x, y := nextInt(), nextInt()
			xy[fmt.Sprintf("%d %d", x, y)] = true
		}

		pos := []int{0, 0}

		for _, c := range s {
			switch c {
			case 'R':
				pos[0]++
			case 'L':
				pos[0]--
			case 'U':
				pos[1]++
			case 'D':
				pos[1]--
			}
			h--
			if h < 0 {
				fmt.Println("No")
				return
			}
			if h < k && xy[fmt.Sprintf("%d %d", pos[0], pos[1])] {
				h = k
			}

		}

		fmt.Println("Yes")
}
