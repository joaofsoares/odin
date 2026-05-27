package min_array_value

find_min :: proc(arr: []int) -> int {
    first := arr[0]

    for &v in arr {
        if v < first {
            first = v
        }
    }

    return first
}
