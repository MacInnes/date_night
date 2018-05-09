class Node < Hash
  attr_reader :title,
              :score

  attr_accessor :left,
                :right
  
  def initialize(title=nil, score=nil)
    @title = title
    @score = score
    @left = {}
    @right = {}
  end

end