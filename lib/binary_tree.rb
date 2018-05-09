require './lib/node'
require 'pry'

class BinaryTree
  attr_accessor :tree


  def initialize
    @tree = Node.new()
  end

  def insert(string, value, depth = 0, current_node = @tree)
    node = Node.new(string, value)

    binding.pry
    if current_node = @tree
      @tree = node
    elsif current_node.score > value
      depth += 1
      binding.pry
      current_node.left = insert(string, value, depth, node)
    elsif current_node.score < value
      # binding.pry
      depth += 1
      current_node.left = insert(string, value, depth, node)
    end
    return depth
  end

end