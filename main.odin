package main

import linked_list "./src/singly_linked_list"
import "core:fmt"

main :: proc() {
	fmt.println("message from main")

	node := linked_list.create_node(1)
	defer free(node)

	linked_list.add_element(node, 2)
	defer free(node.next)

	linked_list.add_element(node, 3)
	defer free(node.next.next)

	linked_list.print_elements(node)

	fmt.println("end main")
}
