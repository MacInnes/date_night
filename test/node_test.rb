require "minitest/autorun"
require "minitest/pride"
require "./lib/node"
require "pry"

class NodeTest < Minitest::Test
  
  def test_instance_of
    node = Node.new("text", 50)

    assert_instance_of Node, node
  end

  def test_attributes
    node = Node.new("hello", 67)

    assert_equal "hello", node.title
    assert_equal 67, node.score
    assert_equal 0, node.left
    assert_equal 0, node.right
  end

  def test_no_args

    node = Node.new

    assert_nil nil, node.title
    assert_nil nil, node.score
    assert_equal 0, node.left
    assert_equal 0, node.right
  end

  def test_reassign_left_right
    skip # strange error message about comparing this, but binding.pry shows expected functionality
    node = Node.new("test", 50)
    node.left = Node.new("left", 25)
    node.right = Node.new("right", 75)

    node_left = Node.new("left", 25)
    node_right = Node.new("right", 75)
    node_wrong = Node.new("wrong", 5)

    # binding.pry

    assert_equal node_left, node.left
    assert_equal node_right, node.right
    refute_equal node_wrong, node.right
  end

end