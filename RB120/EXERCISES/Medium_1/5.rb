class GuessingGame
  attr_accessor :correct_number, :guess_count
  
  def initialize
    @correct_number = (1..100).to_a.sample
    @guess_count = 7
  end

  def play
    loop do
      break if lose_condition
      display_guesses #shows remaining guesses
      break if evaluate_guess(get_player_input) == true
      puts ""
    end
    if guess_count == 0
      lose
    else
      win
    end
  end

  def display_guesses
    puts "You have #{guess_count} guesses remaining."
  end

  def reduce_guess_count
    self.guess_count -= 1
  end

  def get_player_input #returns the player's guess
    player_input = nil
    loop do 
      puts "Enter a number between 1 and 100:"
      player_input = gets.chomp.to_i
      break if (1..100).to_a.include?(player_input)
      puts "INVALID INPUT"
      puts ""
    end
    player_input
  end

  def evaluate_guess(player_guess)
    if player_guess < correct_number
      puts "Too low!"
      reduce_guess_count
    elsif player_guess > correct_number
      puts "Too high!"
      reduce_guess_count
    else
      puts ""
      puts "That's the number!"
      return true
    end
  end

  def win
    puts "You win!"
  end

  def lose
    puts "You lose!"
  end

  def lose_condition
    if guess_count == 0
      puts "You are out of guesses!" 
      return true
    end
  end
end

game = GuessingGame.new
game.play