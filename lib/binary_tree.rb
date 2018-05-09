require './lib/node'
require 'pry'

class BinaryTree
  # attr_accessor :tree


  def initialize
    @tree = Node.new()
  end

  def insert(string, value, depth = 0, current_node = @tree)
    node = Node.new(string, value)

    # empty_node = Node.new

    # binding.pry
    if current_node.score == nil
      @tree = node


    elsif current_node.score > value
      depth += 1

      current_node.left = node
      insert(string, value, depth, node)
    elsif current_node.score < value
      depth += 1

      current_node.right = node
      insert(string, value, depth, node)
    end
    binding.pry
    return depth
  end

end