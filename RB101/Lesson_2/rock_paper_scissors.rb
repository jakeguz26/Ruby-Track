VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_LETTERS = ['r', 'p', 's', 'l', 'sp']

def prompt(message)
  puts "=> #{message}"
end

def convert_to_words(letter)
  case letter
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 's'
    'scissors'
  when 'l'
    'lizzard'
  when 'sp'
    'spock'
  end
end

def win?(first, second)
  (first == 'r' && second == 's'|| first == 'r' && second == 'l') ||
  (first == 'p' && second == 'r' || first == 'p' && second == 'sp') ||
  (first == 's' && second == 'p' || first == 's' && second == 'l') ||
  (first == 'sp' && second == 'r' || first == 'sp' && second == 's') ||
  (first == 'l' && second == 'p' || first == 'l' && second == 'sp')
end

def display_results(player, computer)
  if win?(player, computer)
    result = 'You won!'
    return result
  elsif win?(computer, player)
    result = 'You lost!'
    return result
  else
    return "It's a tie"
  end
end

user_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}. Type first letter (sp for 'spock')."
    choice = gets.chomp

    if VALID_LETTERS.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = ['r', 'p', 's', 'l', 'sp'].sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

  result = display_results(choice, computer_choice)
  prompt(result)
  
  case result
  when "You won!"
    user_score += 1
  when "You lost!"
    computer_score += 1
  end
  
  prompt("Your score is #{user_score}.")
  prompt("The computer score is #{computer_score}.")
  
  case user_score
  when 3
    puts ("YOU WIN!!")
    break
  end

  case computer_score
  when 3
    prompt("THE COMPUTER WINS!")
    break
  end

  prompt("NEXT ROUND")
  
end

prompt('Thank you for playing! Good bye!')