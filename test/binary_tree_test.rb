require "minitest/autorun"
require "minitest/pride"
require "./lib/binary_tree"
require "./lib/node"
require "pry"

class BinaryTreeTest < Minitest::Test
  
  def default_data
    
  end


  def test_exists
    skip
    tree = BinaryTree.new

    assert_instance_of BinaryTree, tree
  end

  def test_insert_root
    skip
    tree = BinaryTree.new

    assert_equal 0, tree.insert("a movie title", 60)

    tree = Node.new("a movie title", 60)
  end

  def test_insert_node

    tree = BinaryTree.new
    root_insert = tree.insert("a movie", 50)
    node_1_insert = tree.insert("another", 75)
    node_2_insert = tree.insert("a third", 25)

    assert_equal 0, root_insert
    assert_equal 1, node_1_insert
    assert_equal 1, node_2_insert

  end

end