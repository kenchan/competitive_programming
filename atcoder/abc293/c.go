package main

import "fmt"

type Point struct {
	i, j int
	nums []int
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	a := make([][]int, h)
	for i := 0; i < h; i++ {
		a[i] = make([]int, w)
		for j := 0; j < w; j++ {
			fmt.Scan(&a[i][j])
		}
	}

	ans := 0
	queue := make([]Point, 0)
	queue = append(queue, Point{0, 0, make([]int, 0)})

	for {
		if len(queue) == 0 {
			break
		}
		point := queue[len(queue) - 1]
		queue = queue[0:len(queue) - 1]

		happy := true
		n := a[point.i][point.j]
		for i := 0; i < len(point.nums); i++ {
			if point.nums[i] == n {
				happy = false
				break
			}
		}

		if happy {
			if point.i == h-1 && point.j == w-1 {
				ans++
			} else {
				if point.i < h-1 {
					nums := make([]int, len(point.nums))
					copy(nums, point.nums)
					queue = append(queue, Point{point.i + 1, point.j, append(nums, n)})
				}
				if point.j < w-1 {
					nums := make([]int, len(point.nums))
					copy(nums, point.nums)
					queue = append(queue, Point{point.i, point.j + 1, append(nums, n)})
				}
			}
		}
	}

	fmt.Println(ans)
}
