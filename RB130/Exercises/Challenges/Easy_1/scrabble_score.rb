=begin
- problem:

- write a program that computes the score of a scrabble word
- rules: case doesnt matter... doesnt have to be real word?

- A, E, I, O, U, L, N, R, S, T ---> 1
- D, G	---> 2
- B, C, M, P	---> 3
- F, H, V, W, Y --->	4
- K	---> 5
- J, X	---> 8
- Q, Z --->	10

- data structure
- given a string.. convert into an array of characters and iterate through? 
- do i save the scores in a hash? 

- algo:

(empty string is 0, nil is 0, )
- turn the given string into an array of characters
- iterate through the array using map and mutate each character into the corresponding score
- add the remaining integers


=end

KEY = {'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1, 'l' => 1, 'n' => 1, "r" => 1, "s" => 1, 't' => 1,
'd' => 2, "g" => 2,
'b' => 3, "c" => 3, "m" => 3, "p" => 3, 
'f' => 4, "h" => 4, "v" => 4, "w" => 4, "y" => 4,
"k" => 5,
'j' => 8, "x" => 8,
'q' => 10, "z" => 10,
"" => 0, " " => 0, nil => 0}

class Scrabble
  attr_accessor :word

  def self.score(string)
    Scrabble.new(string).score
  end

  def initialize(word)
    @word = word
  end

  def score
    return 0 if word == nil
    word.strip.downcase.chars.map { |letter| KEY[letter] }.sum 
  end
end

car = Scrabble.new('car')