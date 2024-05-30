class Octal
  INVALID_NUM = [8, 9]
  INVALID_CHAR = ('a'..'z').to_a

  def initialize(str)
    @str = str
  end

  def to_decimal
    return 0 if invalid?
    sum = 0
    power = 0
    digit_arr = @str.to_i.digits
    digit_arr.each do |num| 
      sum += ( num * (8 ** power))
      power += 1
    end
    sum
  end

  def invalid?
    return 0 if @str.to_i.digits.any? { |num| INVALID_NUM.include?(num) } || @str.chars.any?{ |element| INVALID_CHAR.include?(element) } 
  end


end

octal = Octal.new('123').to_decimal
p octal