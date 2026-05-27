package fibonacci_test

import fib "../../../src/misc/fibonacci"
import "core:testing"

@(test)
nth_zero :: proc(t: ^testing.T) {
    actual := fib.fibonacci(0)
    expected := 0
    testing.expect_value(t, expected, actual)
}

@(test)
nth_one :: proc(t: ^testing.T) {
    actual := fib.fibonacci(1)
    expected := 1
    testing.expect_value(t, expected, actual)
}

@(test)
nth_two :: proc(t: ^testing.T) {
    actual := fib.fibonacci(2)
    expected := 1
    testing.expect_value(t, expected, actual)
}

@(test)
nth_three :: proc(t: ^testing.T) {
    actual := fib.fibonacci(3)
    expected := 2
    testing.expect_value(t, expected, actual)
}

@(test)
nth_four :: proc(t: ^testing.T) {
    actual := fib.fibonacci(4)
    expected := 3
    testing.expect_value(t, expected, actual)
}

@(test)
nth_ten :: proc(t: ^testing.T) {
    actual := fib.fibonacci(10)
    expected := 55
    testing.expect_value(t, expected, actual)
}
