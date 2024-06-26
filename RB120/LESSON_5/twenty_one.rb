FACE_CARDS = ['jack', 'queen', 'king']
ACE = 'ace'

class Participant
  attr_accessor :cards_in_hand, :move_choice, :total_score
  
  def initialize
    @cards_in_hand = []
    @total_score = 0
  end

  def face_card_conversion(arr) #iterate through elements and swap out face cards for the integer 10
    arr_integers = []
    arr.each do |element|
      if FACE_CARDS.include?(element)
        arr_integers << 10
      else
        arr_integers << element
      end
    end
    return ace_conversion(arr_integers) if arr_integers.include?(ACE)
    arr_integers
  end

  def integer?(element)
    if (0..10).to_a.include?(element)
      true
    else
      false
    end
  end

  def ace?(element)
    if element == ACE
      true
    else
      false
    end
  end
  
  def ace_conversion(arr)
    arr_integers = arr.select { |x| integer?(x) } #arr of integer
    arr_aces = arr.select { |y| ace?(y) } #arr of 'aces

    arr_aces.size.times do |x|
      if busted?(arr_integers) #if the current integers cause me to bust... 
        arr_integers << 1
      else
        arr_integers << 11
      end
    end

    arr_integers
  end

  def busted?(arr)
    sum_arr = face_card_conversion(arr)
    sum_arr.sum > 21
  end

  def calculate_total_score(arr) #find the sum of the current hand
    self.total_score = face_card_conversion(arr).sum #face card method will return an array of integers which can then be summed
  end
end

class Player < Participant
end

class Dealer < Participant
end

class Game
  attr_accessor :dealer, :player, :deck_of_cards

  def initialize
    @dealer = Dealer.new
    @player = Player.new
    @deck_of_cards = []
    4.times do |x|
      [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace'].each do |y|
      @deck_of_cards << y
      end
    end
  end

  def initial_deal
    2.times do |x|
      current_card = pull_from_deck #pulls card and assigns to current card var
      player.cards_in_hand << current_card #appends current card to player instance var
      current_card = pull_from_deck #pulls card and assigns to current card var
      dealer.cards_in_hand << current_card #appends current card to dealer instance var
    end
  end

  def pull_from_deck
    pulled_card = deck_of_cards.sample #pulls a random card from the instance var @deck of cards
    deck_of_cards.delete_at(deck_of_cards.index(pulled_card))
    pulled_card
  end

  def show_initial_cards
    puts "You have: #{player.cards_in_hand[0]} and #{player.cards_in_hand[1]}."
    puts "The dealer has: #{dealer.cards_in_hand[0]} and unknown. #{dealer.cards_in_hand.size} total."
    puts ""
  end

  def player_turn
    loop do
      move_choice = nil
      loop do
        puts "Would you like to HIT or STAY?"
        move_choice = gets.chomp
        if move_choice.downcase == 'hit' || move_choice.downcase == 'stay'
          break
        else
          puts "INVALID INPUT"
          puts ""
        end
      end
      case move_choice
      when 'hit'
        hit
        if player.busted?(player.cards_in_hand)
          puts "YOU BUSTED!"
          return nil
        end
      when 'stay'
        system 'clear'
        display_player_cards
        return true
      end
    end
  end

  def dealer_turn
    dealer.total_score = dealer.calculate_total_score(dealer.cards_in_hand)
    loop do  
      if dealer.total_score < 17
        dealer.cards_in_hand << pull_from_deck #dealer hits
        dealer.total_score = dealer.calculate_total_score(dealer.cards_in_hand)
      else
        break #dealer stays
      end
    end
    display_dealer_cards
  end

  def show_result
    if dealer.busted?(dealer.cards_in_hand)
      puts "Dealer busts. You win!"
    elsif player.total_score > dealer.total_score
      puts "You win!"
    elsif player.total_score < dealer.total_score
      puts "Dealer wins!"
    else
      puts "TIE!"
    end
  end

  def hit
    player.cards_in_hand << pull_from_deck
    system 'clear'
    display_player_cards
    puts ""
  end

  def display_player_cards
    puts "You now have: #{player.cards_in_hand[0..-2].join(', ')}" + " and #{player.cards_in_hand[-1]}. Your total is: #{player.calculate_total_score(player.cards_in_hand)}"
  end

  def display_dealer_cards
    puts "The dealer now has: #{dealer.cards_in_hand[0..-2].join(', ')}" + " and #{dealer.cards_in_hand[-1]}. Dealer total is: #{dealer.calculate_total_score(dealer.cards_in_hand)}"
  end

  def again?
    puts "Would you like to play again? (Y or N)"
    if gets.chomp.downcase == 'n'
      return nil
    else
      system 'clear'
      initialize
    end
  end

  def start
    loop do
      initial_deal
      show_initial_cards
      if player_turn == nil #add some functionality to stop gameplay if player busts here
        break unless again? #again needs to evaluate to true
      else
        dealer_turn
        puts ""
        show_result # --> possible results are dealer bust + player win, dealer win, or tie
        break unless again?
      end
    end
    puts ""
    system 'clear'
    goodbye
  end

  def goodbye
    puts "Thanks for playing!"
  end
end

Game.new.start