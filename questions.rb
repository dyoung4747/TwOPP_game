class Question
  attr_accessor :num1, :num2, :answer, :number

  def initialize(number)
    @number = number
    @num1 = num_generator
    @num2 = num_generator
    @answer = num1 + num2
  end

  def num_generator
    num = rand(1..20)
  end

  def to_s
    "Question #{number}: What is #{num1} + #{num2}"
  end

end
