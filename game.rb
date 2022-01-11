require './players.rb'
require './questions.rb'

class Game
  attr_accessor :p1, :p2, :players, :q1, :q2, :q3, :q4, :q5, :questions

  def initialize()
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    
    @players = [@p1, @p2]
    
    @q1 = Question.new(1)
    @q2 = Question.new(2)
    @q3 = Question.new(3)
    @q4 = Question.new(4)
    @q5 = Question.new(5)
    @q6 = Question.new(6)
    @q7 = Question.new(7)
    @q8 = Question.new(8)
    @q9 = Question.new(9)
    @q10 = Question.new(10)
    @q11 = Question.new(11)
    @q12 = Question.new(12)
    @q13 = Question.new(13)
    @q14 = Question.new(14)
    @q15 = Question.new(15)
    @q16 = Question.new(16)
    @q17 = Question.new(17)
    @q18 = Question.new(18)
    @q19 = Question.new(19)
    @q20 = Question.new(20)
    @q21 = Question.new(21)

    @questions = [@q1, @q2, @q3, @q4, @q5, @q6, @q7, @q8, @q9, @q10, @q11, @q12, @q13, @q14, @q15, @q16, @q17, @q18, @q19, @q20, @q21]

  end

  def start

    
    puts "Welcome to TwOOP!"
    puts "Prepare for questions..."

    @questions.each { |q| 
      if (@questions.index(q) == 20)
        puts "You are both show-offs... Try a harder game you try-hards..."
        break
      elsif (@p1.current_score == 0)
        puts "Player 2 wins, congratulations!!"
        break
      elsif (@p2.current_score == 0)
        puts "Player 1 wins, congratulations!!"
        break
      elsif (@questions.index(q) % 2 == 0 || @questions.index(q) == 0)
      
        puts "#{@p1.name}...\n#{q}?"
      
        print "> "
        choice = $stdin.gets.chomp
      
        if choice.to_i == q.answer
          puts "Wow, you're incredibly smart. That's CORRECT!"
          puts "#{@p1.name}'s score remains #{@p1.current_score}/3"
        else 
          @p1.lose_point
          puts "Bad answer... You're WRONG #{@p1.name}!"
          puts "#{@p1.name}'s score is now #{@p1.current_score}/3"
        end

      else
        puts "#{@p2.name}...\n#{q}?"
      
        print "> "
        choice = $stdin.gets.chomp
      
        if choice.to_i == q.answer
          puts "Wow, you're incredibly smart. That's CORRECT!"
          puts "#{@p2.name}'s score remains #{@p2.current_score}/3"
        else 
          @p2.lose_point
          puts "Bad answer... You're WRONG #{@p2.name}!"
          puts "#{@p2.name}'s score is now #{@p2.current_score}/3"
        end
      end
    }
  end
end

game = Game.new
game.start


