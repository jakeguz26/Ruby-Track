class Participant
  attr_accessor :cards_in_hand
  
  def initialize
    @cards_in_hand = []
  end

  def hit
  end

  def stay
  end

  def busted?
  end

  def total
  end
end

class Player < Participant
end

class Dealer < Participant
end

class Game
  attr_reader :dealer, :player, :deck_of_cards

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
    puts "You have a #{player.cards_in_hand[0]} and a #{player.cards_in_hand[1]}."
    puts "The dealer has a #{dealer.cards_in_hand[0]} and unknown."
  end

  def start
    initial_deal
    show_initial_cards
    p deck_of_cards
    # player_turn
    # dealer_turn
    # show_result
  end
end

Game.new.start
