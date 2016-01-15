package main

import (
	"fmt"
	"time"
)

// 2520 is the smallest number that can be divided by each of the
// numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is evenly divisible
// by all of the numbers from 1 to 20?

func main() {
	now := time.Now()
	smallest := 2521

	for n := 2; n <= 20; n++ {
		if smallest%n != 0 {
			smallest++
			n = 2
		}
	}

	fmt.Printf("Smallest number %d\n", smallest)
	fmt.Println(time.Since(now))
}
