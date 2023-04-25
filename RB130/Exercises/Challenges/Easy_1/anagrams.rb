=begin
- Problem:
- given a word and an array of words, return the words (from the array) that can be written using the characters from the intiial word

cat --> [tac, boo, foo] --> returns [tac] because we can write tac using the characters from cat

- Data:

- arrange and count characters from given word into a hash w/  values of the # of occurences? 'c' => 1, 'a' => 1

- Algo:

- break the given word into an array of characters
- iterate through the array and count each character and save it into a hash

- iterate through the list of words
- ---> for each word, iterate through the characters and compare to the hash. if the character exists as a key, subtract value by 1
- ---> at the end of iterating through the word, if the hash values are all 0, return the word to the final array
- ---> reset the hash?



=end

class Anagram
  attr_accessor :word

  def initialize(initial_word)
    @word = initial_word.downcase
  end

  def create_hash
    hash = word.chars.each_with_object({}) do |key, hash|
      hash[key] = word.chars.count(key)
    end
    hash
  end

  def match(arr)
    hash = create_hash
    final_arr = []
    arr.each do |string|
      if string.size <= word.size && string.downcase != word
        string.chars.each do |character| # <--- iterating through the characters of each word
          if hash.include?(character.downcase)
            hash[character.downcase] -= 1
          end
        end
      end
      final_arr << string if hash.values.all?(0)
      hash = create_hash
    end
    final_arr
  end
end

word = Anagram.new('listen')
word.match(["enlists", "google", "inlets", "banana"])

