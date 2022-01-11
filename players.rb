class Player
  attr_accessor :name, :current_score
  
  def initialize(name)
    @name = name
    @current_score = 3
  end

  def set_name=(new_name)
    @name = new_name
  end

  def lose_point
    @current_score -= 1
  end
end

