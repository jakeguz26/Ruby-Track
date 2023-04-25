=begin
problem: write a program that converts modern numbers to roman numerals

rules:

I -> 1
V -> 5
X -> 10
L -> 50
C -> 100
D -> 500
M -> 1,000

a single character (I or V) can only be written a max of 4 in a row --> 4 is IV because IIII cannot be written

data:

- the values of roman numerals should probably be saved as a hash for easy reference
- do i also save the values as n array?
  ---> [1, 5, 10, 50....]
- the given number... maybe an array? 

algorithm

- turn the given number into an array of digits using #digits
  ----> 361 => [1, 60, 3]
- iterate through the array using #map and transform each element by multipling it by 1 -> 10 -> 100 (ill need a variable to keep track)

- [1, 60, 300] ==> call #reverse which gives us [300, 60, 1]

- iterate through each element and mutate into the letter

  # we need to figure out which letter to start with
  # with the current digit (300) iterate through the array of letter values and divide 300 / letter value until the result is zero
  # once we hit zero (in this case itll be at 1000 which is M) we need to use the previous value (100 which is C) --> assign this to a variable

- call a method that causes the transofmration through addition
  ---> we need a variable that keeps track of the current tens place (100)
  ---> for every letter we add, subtract from the total element until we get to zero
        ----> 300 gives us C... 200 another C... 100 one more C
        ---> CCC



=end

HASH = {'I'=> 1, 'V' => 5, 'X' => 10, "L" => 50, "C"=>100, "D"=>500, "M"=>100 }
VALUES = HASH.values


class RomanNumeral
  attr_accessor :num_arr

  def initialize(num)
    @num_arr = num.digits
    find_tens_place
  end

  def find_tens_place
    counter = 1
    arr = []
    num_arr.map do |num|
      arr << (num * counter)
      counter *= 10
    end
    input_letter(arr.reverse!)
  end

  def input_letter(arr)
    p arr
    letters_arr = arr.map do |num|
      letter = ''
      VALUES.each { |value| letter = value if (num / value) == 0 }
      letter = HASH.key(VALUES[(VALUES.index(letter) - 1)])
    end
    p letters_arr
  end

end

number = RomanNumeral.new(567)