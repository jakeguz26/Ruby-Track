def average(numbers)
  sum = 0
  numbers.each do |x|
    sum += x
  end
  result = sum / numbers.count
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8]) 
puts average([9, 47, 23, 95, 16, 52]) 