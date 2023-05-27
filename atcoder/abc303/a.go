package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var s, t string
	fmt.Scan(&s, &t)

	for i := 0; i < n; i++ {
		if s[i] == t[i] {
		} else if (s[i] == '1' && t[i] == 'l') || (s[i] == 'l' && t[i] == '1') {
		} else if (s[i] == '0' && t[i] == 'o') || (s[i] == 'o' && t[i] == '0') {
		} else {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
