require_relative "player.rb"
require_relative "question.rb"
require_relative "turn.rb"

class Player
  attr_accessor :lives, :name 

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrease_lives 
    self.lives = self.lives - 1
  end

  def out_of_lives?
    self.lives <= 0
  end
end 

