def tip_calc(num)
  tip_amount = 0
  tip_amount = num * 0.10
end

puts 'What is the bill in dollars? '
bill = gets.chomp.to_f

puts 'What is the tip percentage? '
tip = gets.chomp.to_f

total = tip_calc(bill) + bill

puts "The tip is $#{tip_calc(bill).round(2)}"
puts "The total is $#{total.round(2)}"