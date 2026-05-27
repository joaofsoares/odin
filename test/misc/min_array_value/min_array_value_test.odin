package min_array_value_test

import "core:testing"
import find "./../../../src/misc/min_array_value"


@(test)
find_zero :: proc(t: ^testing.T) {
    nums :: []int{2, 9, 5, 0, 1, 7}
    actual := find.find_min(nums)
    expected := 0
    testing.expect_value(t, expected, actual)
}

@(test)
find_one :: proc(t: ^testing.T) {
    nums :: []int{2, 9, 5, 6, 1, 7}
    actual := find.find_min(nums)
    expected := 1
    testing.expect_value(t, expected, actual)
}

@(test)
find_two :: proc(t: ^testing.T) {
    nums :: []int{3, 9, 2, 6, 5, 7}
    actual := find.find_min(nums)
    expected := 2
    testing.expect_value(t, expected, actual)
}

@(test)
find_big_numbers :: proc(t: ^testing.T) {
    nums :: []int{50, 40, 30, 20, 60}
    actual := find.find_min(nums)
    expected := 20
    testing.expect_value(t, expected, actual)
}
