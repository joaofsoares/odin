package singly_linked_list

import "core:fmt"

Node :: struct {
	data: int,
	next: ^Node,
}

create_node :: proc(item: int) -> ^Node {
	node := new(Node)
	node.data = item
	node.next = nil
	return node
}

print_elements :: proc(node: ^Node) {
	tmp := node

	fmt.println(tmp.data)

	for tmp.next != nil {
		tmp = tmp.next
		fmt.println(tmp.data)
	}
}

add_element :: proc(node: ^Node, item: int) {
	new_node := create_node(item)

	if node.next == nil {
		node.next = new_node
	} else {
		last := node.next

		for last.next != nil {
			last = last.next
		}

		last.next = new_node
	}
}
