require "minitest/autorun"
require "minitest/pride"
require "./lib/binary_tree"
require "./lib/node"
require "pry"

class BinaryTreeTest < Minitest::Test
  
  def test_exists
    tree = BinaryTree.new

    assert_instance_of BinaryTree, tree
  end

  def test_insert_root
    tree = BinaryTree.new
    # binding.pry
    assert_equal 0, tree.insert("a movie title", 60)

    tree = Node.new("a movie title", 60)
  end

  

end