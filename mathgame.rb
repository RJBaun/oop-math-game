require_relative "player.rb"
require_relative "question.rb"
require_relative "turn.rb"


class MathGame
  attr_accessor :players, :current_player, :answer, :full_question, :current_player_index

  def initialize
    @players = [Player.new("Player1"), Player.new("Player2")]
    @current_player_index = 0
    @current_player = @players[@current_player_index]
  end

  def new_turn
    @current_player_index = (@current_player_index + 1) % 2
    @current_player = @players[@current_player_index]
    @turn = Turn.new(@current_player, @current_player_index, @players)
    @turn.ask_a_question
    @turn.check_score
  end

  def new_game
    until game_over?
      new_turn
    end
  end
  
  def game_over?
      @players.any? {|player| player.out_of_lives?}
  end

end

