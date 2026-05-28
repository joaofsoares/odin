package bubble_sort

// complexity O(n^2)

sort :: proc(arr: []int) -> []int {
	n := len(arr) - 1
	for i in 0 ..< n {
		swapped := false
		for j in 0 ..< (n - i) {
			if arr[j] > arr[j + 1] {
				arr[j], arr[j + 1] = arr[j + 1], arr[j]
				swapped = true
			}
		}
		if !swapped {
			break
		}
	}
	return arr
}
