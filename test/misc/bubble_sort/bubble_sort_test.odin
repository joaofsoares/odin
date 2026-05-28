package bubble_sort_test

import bubble_sort "./../../../src/misc/bubble_sort"
import "core:slice"
import "core:testing"

@(test)
test_sort :: proc(t: ^testing.T) {
	nums := []int{64, 34, 25, 12, 22, 11, 90, 5}
	actual := bubble_sort.sort(nums)
	expected := []int{5, 11, 12, 22, 25, 34, 64, 90}
	testing.expectf(t, slice.equal(expected, actual), "expected %v, got %v", expected, actual)
}

@(test)
test_simple_sort :: proc(t: ^testing.T) {
	nums := []int{5, 4, 3, 2, 1}
	actual := bubble_sort.sort(nums)
	expected := []int{1, 2, 3, 4, 5}
	testing.expectf(t, slice.equal(expected, actual), "expected %v, got %v", expected, actual)
}
