require './lib/node'
require 'pry'

class BinaryTree
  # attr_accessor :root


  def initialize
    @root = Node.new()
  end

  def insert(string, value, depth = 0, current_node = @root)
    node = Node.new(string, value)

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

      return -1
    end   
  end

  def max(current_node = @root)
    if current_node.right != 0
      max(current_node.right)
    else
      return current_node.score
    end
  end

  def min(current_node = @root)
    if current_node.left != 0
      min(current_node.left)
    else
      return current_node.score
    end
  end

  def sort(current_node = @root, output = [])
    if current_node == 0  # this means the parent that called this is a LEAF - break statement
      return output.map { |each| each.to_h } # returns the output as an array
    elsif current_node.left == 0 # eventually min value (or min value for that instance of recursion)
      return [current_node.to_h] + sort(current_node.right, output) # first time this will be the ROOT, followed by each left leaf
    elsif current_node.right == 0 # eventually max value of our array
      return sort(current_node.left, output) + [current_node.to_h]
    else # combine it all - add the current node to the middle
      sort(current_node.left, output) + [current_node.to_h] + sort(current_node.right, output)
    end
  end
  
  def load(filename)
    file = File.new(filename, "r")

    lines = []
    while (line = file.gets)
      lines << line.chomp
    end
    nodes = lines.map{ |e| e.split(", ") }.map { |e| insert(e[1], e[0]) }
    # binding.pry
    nodes.length
  end

  def health(depth)
    # expected [nodes at this level] each node will have [score, children +1, % of [1]/total nodes]
    
  end
end













