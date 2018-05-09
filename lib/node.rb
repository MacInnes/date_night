class Node
  attr_reader :title,
              :score

  attr_accessor :left,
                :right
  
  def initialize(title = nil, score = nil, left = nil, right = nil)
    @title = title
    @score = score
    @left = left
    @right = right
  end

end