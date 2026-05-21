package singly_linked_list_test

import linked_list "../../../src/misc/singly_linked_list"
import "core:testing"

@(test)
test_create_node :: proc(t: ^testing.T) {
	node := linked_list.create_node(1)
	defer free(node)
	testing.expect_value(t, node.data, 1)
}

@(test)
test_adding_element_node :: proc(t: ^testing.T) {
	list := new(linked_list.SinglyLinkedList)
	defer free(list)

	linked_list.add_element(list, 1)
	defer free(list.head)
	testing.expect_value(t, list.head.data, 1)

	linked_list.add_element(list, 2)
	defer free(list.head.next)
	testing.expect_value(t, list.head.next.data, 2)

	linked_list.add_element(list, 3)
	defer free(list.head.next.next)
	testing.expect_value(t, list.head.next.next.data, 3)
}
