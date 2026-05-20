package singly_linked_list_test

import linked_list "../src/singly_linked_list"
import "core:testing"

@(test)
test_create_node :: proc(t: ^testing.T) {
	node := linked_list.create_node(1)
	defer free(node)
	testing.expect_value(t, node.data, 1)
}

@(test)
test_adding_element :: proc(t: ^testing.T) {
	node := linked_list.create_node(1)
	defer free(node)
	testing.expect_value(t, node.data, 1)

	linked_list.add_element(node, 2)
	defer free(node.next)
	testing.expect_value(t, node.next.data, 2)

	linked_list.add_element(node, 3)
	defer free(node.next.next)
	testing.expect_value(t, node.next.next.data, 3)
}
