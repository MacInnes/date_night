class Node
  attr_reader :title,
              :score

  attr_accessor :left,
                :right
  
  def initialize(title = nil, score = 0)
    @title = title
    @score = score
    @left = 0 
    @right = 0 
  end

end