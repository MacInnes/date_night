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

  # def sort(current_node = @root, output = [])
  #   # binding.pry

  #   if current_node.left == 0
  #     next_node = current_node.left

  #     output << { next_node.title => next_node.score }
  #     return sort(next_node, output)
      
  #   elsif current_node.right == 0
  #     next_node = current_node.right
  #     output << { current_node.right.title => current_node.right.score }

  #   end

  #   output    
  # end

  # def sort(current_node = @root)

  #   if current_node.left != 0 && current_node.right != 0
  #     return  sort(current_node.left) + sort(current_node.right)
  #   elsif current_node.right != 0
  #     return [current_node.to_h] + sort(current_node.right)
  #   else
  #     [current_node]
  #   end
    
  # end

  # def sort(current_node = @root, output = [])
    # return [current_node] + sort(current_node.right) if current_node.left != 0 && current_node.right != 0
    # return [] if current_node == 0
    # return [current_node.left] if current_node.right == 0
    # return [current_node.right] if current_node.left == 0
    # p current_node
    # return [] if current_node == 0
    # return [current_node] if current_node == 0 
    # return sort(current_node.left, output) + sort(current_node.right, output) if current_node.left != 0
    # return sort(current_node.right, output) + sort(current_node.left, output) if current_node.right != 0
    # if current_node.left != 0 && current_node.right != 0
    #   sort(current_node.left, output) + sort(current_node.right, output)

    # elsif current_node.left == 0 && current_node.right != 0
    #   sort(current_node.right, output + [current_node]) 

    # elsif current_node.left != 0 && current_node.right == 0
    #   sort(current_node.left, output + [current_node])
    
    # else
    #   return output
    # end
    
  # end

  # def each_node(node = @root, nodes = [])
  #   if node.left
  #     next_node = node.left
  #     nodes << next_node
  #     each_node(next_node, nodes)

  #   else
  #     each_node(.right, nodes) if @root.right
  #   end
  #   nodes
  # end

  def sort(current_node = @root, output = [])
    # binding.pry
    return output.map { |e| e.to_h }.to_a if current_node == 0
    return [current_node.to_h] + sort(current_node.right, output) if current_node.left == 0
    return sort(current_node.left, output) + [current_node.to_h] if current_node.right == 0
    return sort(current_node.left, output) + [current_node.to_h] + sort(current_node.right, output)

  end

end













