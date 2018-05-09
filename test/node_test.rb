require "minitest/autorun"
require "minitest/pride"
require "./lib/node"

class NodeTest < Minitest::Test
  
  def test_instance_of
    node = Node.new("text", 50)

    assert_instance_of Node, node
  end

  def test_attributes
    node = Node.new("hello", 67)
    hash = Hash.new

    assert_equal "hello", node.title
    assert_equal 67, node.score
    assert_equal hash, node.left
    assert_equal hash, node.right
  end

  def test_no_args
    node = Node.new
    hash = Hash.new

    assert_equal nil, node.title
    assert_equal nil, node.score
    assert_equal hash, node.left
    assert_equal hash, node.right
  end

  def test_reassign_left_right
    node = Node.new("test", 50)
    node.left = Node.new("left", 25)
    node.right = Node.new("right", 75)

    assert_equal Node.new("left", 25), node.left
    assert_equal Node.new("right", 75), node.right
  end

end