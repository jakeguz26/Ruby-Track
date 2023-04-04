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

class PokerHand
  attr_reader :deck, :current_hand

  # def initialize(deck) # <--- deck parameter points to Deck object
  #   @deck = deck # <-- assigns the parameter deck which points to an instance of Deck ---- deck now has access to all instance methods of Deck class
  #   @current_hand = create_hand #  <--- instance method that creates a hand ----- hand is an array of Card instances. 
  # end

  def initialize(hand) # <--- deck parameter points to Deck object
    #@deck = deck # <-- assigns the parameter deck which points to an instance of Deck ---- deck now has access to all instance methods of Deck class
    @current_hand = hand #  <--- instance method that creates a hand ----- hand is an array of Card instances. 
  end

  # creates hand by pulling 5 cards from the @deck instance variable
  def create_hand
    hand_arr = []
    5.times { |x| hand_arr << deck.draw }
    hand_arr
  end

  # prints the current hand as a string
  def print
    current_hand.each { |element| puts "#{element.rank} of #{element.suit}" }
  end

  def evaluate
    case 
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  def sequence # <-- evalutes if current cards are in sequence
    current_hand.sort_by do |x|
      x.rank
    end

  end

  def all_suit # <--- returns true if the current hand is all the same suit
    suit = current_hand[0].suit
    arr = current_hand.map {|instance| instance.suit }
    return true if arr.all?(suit)
  end

  private

  # jack through ace and same suit
  def royal_flush?
    #return true if all_suit
    sequence
  end

  def straight_flush?
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
  end

  def straight?
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def pair?
  end
end

# instantiating HAND should automatically create an array of 5 cards

# hand = PokerHand.new(Deck.new) #instantiates an instance of Hand AND an instance of Deck --> Deck has an instance variable @deck_arr
# hand.print
# p hand.evaluate

# Straight flush: Five cards of the same suit in sequence (if those five are A, K, Q, J, 10; it is a Royal Flush)
# Four of a kind: Four cards of the same rank and any one other card
# Full house: Three cards of one rank and two of another
# Flush: Five cards of the same suit
# Straight: Five cards in sequence (for example, 4, 5, 6, 7, 8)
# Three of a kind: Three cards of the same rank
# Two pair: Two cards of one rank and two cards of another
# One pair: Two cards of the same rank
# High card: If no one has a pair, the highest card wins

hand = PokerHand.new([
  Card.new('Ace',      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate