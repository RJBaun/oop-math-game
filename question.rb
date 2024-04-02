require_relative "player.rb"
require_relative "question.rb"
require_relative "turn.rb"

class Question
  attr_accessor :question_to_ask, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question_to_ask = "#{@num1} + #{@num2}"
    @answer = @num1 + @num2
  end

  
end

