package singly_linked_list

import "core:fmt"

Node :: struct {
	data: int,
	next: ^Node,
}

SinglyLinkedList :: struct {
	head: ^Node,
}

create_node :: proc(item: int) -> ^Node {
	node := new(Node)
	node.data = item
	node.next = nil
	return node
}

print_elements :: proc(list: ^SinglyLinkedList) {
	current := list.head
	for current != nil {
		fmt.println(current.data, " -> ")
		current = current.next
	}
	fmt.println(" -> nil ")
}

add_element :: proc(list: ^SinglyLinkedList, item: int) {
	new_node := create_node(item)
	new_node.data = item

	if list.head == nil {
		list.head = new_node
	} else {
		current := list.head
		for current.next != nil {
			current = current.next
		}
		current.next = new_node
	}
}
