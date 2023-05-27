package main

import "fmt"

func permutation(n int, k int) int {
    v := 1
    if 0 < k && k <= n {
        for i := 0; i < k; i++ {
            v *= (n - i)
        }
    } else if k > n {
        v = 0
    }
    return v
}

func factorial(n int) int {
    return permutation(n, n - 1)
}

func combination(n int, k int) int {
    return permutation(n, k) / factorial(k)
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	a := make([][]int, m)

	for i := 0; i < m; i++ {
		a[i] = make([]int, n)

		for j := 0; j < n; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	set := make(map[string]struct{})

	for i := 0; i < m; i++ {
		for j := 0; j < n - 1; j++ {
			v1, v2 := a[i][j], a[i][j + 1]

			if v1 < v2 {
				set[fmt.Sprintf("%d %d", v1, v2)] = struct{}{}
			} else {
				set[fmt.Sprintf("%d %d", v2, v1)] = struct{}{}
			}
		}
	}

	fmt.Println(combination(n, 2) - len(set))
}
