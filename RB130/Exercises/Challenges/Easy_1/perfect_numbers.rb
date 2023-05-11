=begin
- problem

- build a program that tells us if a number is perfect, abundant or deficient
- perfect = sum of the numbers divisors are equal to the number
- abundant = sum of the divisors are greater
- deficient = sum of the divisors are less

- (a divisor is any number that can be divided with no remainder - does not include self - DOES include 1)
=end

class PerfectNumber
  attr_reader :number
  
  def self.classify(num)
    PerfectNumber.new(num).classify
  end
  def initialize(num)
    @number = num
  end

  def classify
    raise StandardError if number < 0
    divisors = []
    1.upto(number / 2) { |int| divisors << int if number % int == 0 }
    total = divisors.sum
    return 'abundant' if total > number
    return 'perfect' if total == number
    return 'deficient' if total < number
  end
end

num = PerfectNumber.new(28)