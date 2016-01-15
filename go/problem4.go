package main

import (
	"fmt"
	"strconv"
	"time"
)

// A palindromic number reads the same both ways.
// The largest palindrome made from the product of
// two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.
func main() {
	now := time.Now()
	min := 100
	max := 1000

	var largestPalindrome int
	for i := min; i < max; i++ {
		for j := i; j < max; j++ {
			product := i * j
			if palindrome(strconv.Itoa(product)) && largestPalindrome < product {
				largestPalindrome = product
			}
		}
	}

	fmt.Printf("Largest palindrom product of two 3 digit numbers: %d\n", largestPalindrome)
	fmt.Println("Took:", time.Since(now))
}

func palindrome(s string) bool {
	n := len(s)
	for start, end := 0, 0; start < (n / 2); start++ {
		end = (n - 1) - start
		if s[start] != s[end] {
			return false
		}

	}
	return true
}
