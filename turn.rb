require_relative "player.rb"
require_relative "question.rb"
require_relative "turn.rb"

class Turn

  attr_accessor :current_player, :current_player_index, :players

  def initialize(current_player, current_player_index, players)
    @current_player = current_player
    @current_player_index = current_player_index
    @players = players
  end

  def ask_a_question
    @q = Question.new
    @full_question = "#{@current_player.name}, what is #{@q.question_to_ask}?"
    @answer = @q.answer
    puts @full_question
    @guess = gets.chomp.to_i
    @correct = @answer == @guess
    if !@correct
      @current_player.decrease_lives
      puts "Seriously? No!"
    else
      puts "Yes! Good Job!"
    end
  end

    def check_score
      if @current_player.lives == 0
        winner = @players[(@current_player_index + 1) % 2].name
        puts "#{@current_player.name} is out of lives! #{winner} wins!"
      else 
        puts "#{@players[0].name} lives left: #{@players[0].lives}   vs.   #{@players[1].name} lives left: #{@players[1].lives}"
        puts "<------------------NEW TURN------------------------>"
      end
    end

end