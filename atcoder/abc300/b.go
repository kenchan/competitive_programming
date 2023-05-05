package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var	sc = bufio.NewScanner(os.Stdin)

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	a := make([][]string, h)
	b := make([][]string, h)

	for i := 0; i < h; i++ {
		sc.Scan()
		a[i] = strings.Split(sc.Text(), "")
	}
	for i := 0; i < h; i++ {
		sc.Scan()
		b[i] = strings.Split(sc.Text(), "")
	}

	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			ok := true
			for s := 0; s < h; s++ {
				for t := 0; t < w; t++ {
					if a[(s - i + h) % h][(t - j + w)% w] != b[s][t] {
						ok = false
					}
				}
			}
			if ok {
				fmt.Println("Yes")
				return
			}
		}
	}

	fmt.Println("No")
}
