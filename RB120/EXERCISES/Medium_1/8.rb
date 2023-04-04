# includan instace method that instantiates an object from the card class 
# how to organize the RANKS and SUITS?
# --> array of sub arrays?
# --> [[2, hearts], [4, spades]]... 
# --> iterate through RANKS array | ill have a parameter |
# ----> iterate through SUITS array | another parameter |
# -------> push the sub arr made from these two elements to a new array

FACE_CARDS = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_reader :deck_arr
  attr_accessor :current_card

  def initialize
    @deck_arr = build_cards(RANKS, SUITS)
    @current_card = nil
  end

  # creates data structure to model all the cards
  def build_cards(ranks, suits)
    arr = []
    ranks.each do |a|
      suits.each do |b|
        arr << [a, b]
      end
    end
    arr.shuffle # <--- returns array of sub arrays.. should i shuffle here too?
  end

  # creates sub array of current card
  def create_current_card
    sub_arr = deck_arr.pop #returns singular element from instance variable
    @current_card = sub_arr
  end

   # instantiates an object from the card class using elements from the RANKS and SUITS array
   def draw
    create_current_card
    @deck_arr = build_cards(RANKS, SUITS) if deck_arr.empty?
    card = Card.new(@current_card[0], @current_card[1])
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    transform(rank) <=> transform(other.rank)
  end

  # returns an integer in place of a fae card?
  def transform(card)
    if FACE_CARDS.keys.include?(card)
      return FACE_CARDS[card]
    else
      card
    end
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

deck = Deck.new

drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.