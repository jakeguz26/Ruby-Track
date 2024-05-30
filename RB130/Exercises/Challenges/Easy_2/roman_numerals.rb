ROMAN_NUMERALS = { I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}

class RomanNumeral
  attr_reader :integer, :digit_arr
  
  def initialize(integer)
    @integer = integer
    find_digits
    to_roman
  end

  def find_digits
    counter = 1
    new_arr = []
    integer.digits.each do |num|
      new_arr << (num * counter)
      counter *= 10
    end
    @digit_arr = new_arr.reverse
  end

  def to_roman
    digit_arr.each {|digits| count(digits) }
  end

  def count(num)
    
  end

end

number = RomanNumeral.new(266)