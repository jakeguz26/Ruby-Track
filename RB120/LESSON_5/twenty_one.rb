FACE_CARDS = ['jack', 'queen', 'king', 'ace']

class Participant
  attr_accessor :cards_in_hand, :move_choice
  
  def initialize
    @cards_in_hand = []
  end

  def hit
    pull_from_deck
  end

  def stay
  end

  def busted?(arr)
    sum_arr = []
    arr.each do |element|
      if FACE_CARDS.include?(element)
        sum_arr << 10
      else
        sum_arr << element
      end
    end
    sum_arr.sum > 21
  end

  def total
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
      current_card = pull_from_deck
      player.cards_in_hand << current_card
      current_card = pull_from_deck
      dealer.cards_in_hand << current_card
    end
  end

  def pull_from_deck
    pulled_card = deck_of_cards.sample
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
      
      player.move_choice = move_choice 

      case player.move_choice
      when 'hit'
        hit
        p player.busted?(player.cards_in_hand)
      when 'stay'
        break
      end
    end
  end

  def hit
    player.cards_in_hand << pull_from_deck
    display_player_cards
    puts ""
  end

  def display_player_cards
    puts "You now have: #{player.cards_in_hand[0..-2].join(', ')}" + " and #{player.cards_in_hand[-1]}."
  end

  def start
    initial_deal
    show_initial_cards
    player_turn
    # dealer_turn
    # show_result
  end
end

Game.new.start