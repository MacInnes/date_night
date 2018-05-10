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
    skip
    tree = BinaryTree.new
    root_insert = tree.insert("one", 50)
    node_2_insert = tree.insert("two", 75)
    node_3_insert = tree.insert("three", 25)
    node_4_insert = tree.insert("four", 15)
    node_5_insert = tree.insert("five", 99)

    expected = [{"four" => 15}, {"three" => 25}, {"one" => 50}, {"two" => 75}, {"five" => 99}]

    assert_equal expected, tree.sort
  end

  def test_file_load
    skip
    tree = BinaryTree.new

    assert_equal 6, tree.load("netflix_file.txt")
    assert_equal 99, tree.load("movies.txt")

    assert_equal true, tree.include?("73") # Ballad of Ricky Bobby
  end

  def test_health
    skip # moving on to delete, this seems like backwards recursion

    tree = BinaryTree.new
    tree.insert(98, "Animals United")
    tree.insert(58, "Armageddon")
    tree.insert(36, "Bill & Ted's Bogus Journey")
    tree.insert(93, "Bill & Ted's Excellent Adventure")
    tree.insert(86, "Charlie's Angels")
    tree.insert(38, "Charlie's Country")
    tree.insert(69, "Collateral Damage")

    
    expected_0 = [[98, 7, 100]]
    expected_1 = [[58, 6, 85]]
    expected_2 = [[36, 2, 28], [93, 3, 42]]

    result_0 = tree.health(0)
    result_1 = tree.health(1)
    result_2 = tree.health(2)

    # tree.health(0)
    # => [[98, 7, 100]]
    # tree.health(1)
    # => [[58, 6, 85]]
    # tree.health(2)
    # => [[36, 2, 28], [93, 3, 42]]

    assert_equal expected_0, result_0
    assert_equal expected_1, result_1
    assert_equal expected_2, result_2

    
  end

  def test_leaves
    tree = BinaryTree.new
    root_insert = tree.insert("one", 50)
    node_2_insert = tree.insert("two", 75)
    node_3_insert = tree.insert("three", 25)
    node_4_insert = tree.insert("four", 15)
    node_5_insert = tree.insert("five", 99)

    assert_equal 2, tree.leaves
  end

end














