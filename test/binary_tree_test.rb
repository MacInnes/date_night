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
    skip

    tree = BinaryTree.new
    root_insert = tree.insert("one", 50)
    node_2_insert = tree.insert("two", 75)
    node_3_insert = tree.insert("three", 25)
    node_4_insert = tree.insert("four", 15)
    node_5_insert = tree.insert("five", 99)

    assert_equal 0, root_insert
    assert_equal 1, node_2_insert
    assert_equal 1, node_3_insert
    assert_equal 2, node_4_insert
    assert_equal 2, node_5_insert

  end

  def test_include_value_method
    skip
    tree = BinaryTree.new
    root_insert = tree.insert("a movie", 50)
    node_1_insert = tree.insert("another", 75)
    node_2_insert = tree.insert("a third", 25)

    assert_equal true, tree.include?(50)
    assert_equal true, tree.include?(25)
    assert_equal false, tree.include?(86)

  end

  def test_depth_of_value_method
    skip

    tree = BinaryTree.new
    root_insert = tree.insert("a movie", 50)
    node_1_insert = tree.insert("another", 75)
    node_2_insert = tree.insert("a third", 25)
    node_3_insert = tree.insert("a fourth", 35)

    assert_equal 0, tree.depth_of(50)
    assert_equal 1, tree.depth_of(25)
    assert_equal 1, tree.depth_of(75)
    assert_equal 2, tree.depth_of(35)
    assert_equal -1, tree.depth_of(86)
  end

  def test_max_value
    skip

    tree = BinaryTree.new
    root_insert = tree.insert("one", 50)
    node_2_insert = tree.insert("two", 75)
    node_3_insert = tree.insert("three", 25)
    node_4_insert = tree.insert("four", 15)
    
    assert_equal 75, tree.max

    node_5_insert = tree.insert("five", 99)

    assert_equal 99, tree.max

  end

  def test_min_value
    skip

    tree = BinaryTree.new
    root_insert = tree.insert("one", 50)
    node_2_insert = tree.insert("two", 75)
    node_3_insert = tree.insert("three", 25)
  
    assert_equal 25, tree.min

    node_4_insert = tree.insert("four", 15)
    node_5_insert = tree.insert("five", 99)

    assert_equal 15, tree.min
  end

  def test_sort
    tree = BinaryTree.new
    root_insert = tree.insert("one", 50)
    node_2_insert = tree.insert("two", 75)
    node_3_insert = tree.insert("three", 25)
    node_4_insert = tree.insert("four", 15)
    node_5_insert = tree.insert("five", 99)

    expected = [{"four" => 15}, {"three" => 25}, {"one" => 50}, {"two" => 75}, {"five" => 99}]

    assert_equal expected, tree.sort.map
  end



end














