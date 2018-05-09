require './lib/node'

class BinaryTree < Hash
  attr_accessor :tree


  def initialize
    @tree = Node.new
  end

  def insert(string, value, node = nil, depth = 0)
    if !node
      node = Node.new(string, value)
    end
    return depth
  end

end