def factors(number)
  divisor = number
  factors = []
  
  loop do
    break if number <= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
    break if divisor == 0
  end
  factors
end

puts factors(25)