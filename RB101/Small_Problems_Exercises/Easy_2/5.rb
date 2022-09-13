CURRENT_YEAR = 2022

puts 'What is your age?'
user_age = gets.chomp.to_i

puts 'At what age would you like to retire?'
user_retire_age = gets.chomp.to_i

retire_year = (user_retire_age - user_age) + CURRENT_YEAR
years_left = retire_year - CURRENT_YEAR

puts "It is #{CURRENT_YEAR}. You will retire in #{retire_year}."
puts "You only have #{years_left} years of work to go!"