require './lib/node'
require 'pry'

class BinaryTree
  # attr_accessor :root


  def initialize
    @root = Node.new()
  end

  def insert(string, value, depth = 0, current_node = @root)
    node = Node.new(string, value)
    # binding.pry
    if current_node.score == 0 
      @root = node

    elsif value < current_node.score
      # move left
      depth += 1
      
      if current_node.left == 0
        current_node.left = node
        return depth
      else
        return insert(string, value, depth, current_node.left)
      end

    elsif value > current_node.score
      #move right

      depth += 1
      if current_node.right == 0
        current_node.right = node
        return depth
      else
        return insert(string, value, depth, current_node.right)
      end
    end

    return depth
  end

  def include?(value, current_node = @root)
    puts "testing #{value}"
    binding.pry
    if value == current_node.score
      return true
    elsif value < current_node.score && current_node.left != 0
      # search left
      include?(value, current_node.left)
    elsif value > current_node.score && current_node.right != 0
      #search right
      include?(value, current_node.right)
    else
      return false
    end
  end

  def depth_of(value, depth = 0, current_node = @root)
    # binding.pry
    if value == current_node.score
      return depth
    elsif value < current_node.score && current_node.left != 0
      # search left
      depth += 1
      depth_of(value, depth, current_node.left) 
    elsif value > current_node.score && current_node.right != 0
      #search right
      depth += 1
      depth_of(value, depth, current_node.right)
    else
      # binding.pry
      return -1
    end
        
  end


end













