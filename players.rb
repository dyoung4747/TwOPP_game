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

=begin
  def to_s
    "#{name} has a score of #{current_score}"
  end
=end
end

=begin
p1 = Player.new('Player 1')
puts p1.name
puts p1.current_score
p1.lose_point
puts p1.current_score

p2 = Player.new('Player 2')
puts p2.name
puts p2.current_score
=end
