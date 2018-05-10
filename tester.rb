def health(depth, total_nodes = 0, children_nodes = 0, current_node = @root)
    # expected [nodes at this level] output, each node will have [score, children +1, % of [1]/total nodes]
    if current_node == 0 # if we are on a leaf (should be the min value) - base case
      return [] #initialize array for output
    elsif current_node.left == 0

    elsif current_node.right == 0
      
    end  
  end