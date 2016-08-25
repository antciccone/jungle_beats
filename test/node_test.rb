require "./lib/node"
require "minitest/autorun"
require "minitest/pride"

class NodeTest < Minitest::Test

  def test_test_a_node_can_be_created
    node = Node.new("plop")
    assert_equal Node, node.class
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil
    node = Node.new("Plop")

    assert_equal nil, node.next_node
  end 
end
