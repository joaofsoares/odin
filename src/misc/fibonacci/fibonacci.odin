package fibonacci

fibonacci :: proc(n: int) -> int {
    return n <= 1 ? n : fibonacci(n-1) + fibonacci(n-2)
}
