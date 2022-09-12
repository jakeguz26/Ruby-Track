def sum(num)
  digits = []
  digits = num.to_s.chars.map { |x| x.to_i}
  digits = digits.reduce(0) {|sum, number| sum + number }
end

puts sum(12345)