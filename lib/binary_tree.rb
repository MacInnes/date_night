require './lib/node'
require 'pry'

class BinaryTree
  # attr_accessor :tree


  def initialize
    @tree = Node.new()
  end

  def insert(string, value, depth = 0, current_node = @tree)
    node = Node.new(string, value)

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

    return depth
  end

  def include?(value, current_node = @tree)
    if value == current_node.score
      return true
    elsif value < current_node.score && current_node.left != nil
      # search left
      include?(value, current_node.left)
    elsif value > current_node.score && current_node.right != nil
      #search right
      include?(value, current_node.right)
    else
      return false
    end

  end


end













