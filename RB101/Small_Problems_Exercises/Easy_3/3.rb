def prompt(message)
  puts "==> #{message}"
end

prompt("Please write a word or multiple words: ")
user_input = gets.chomp
user_input_array = user_input.split(" ")

nums = user_input_array.map do |x|
  x.chars.count
end

total_chars = nums.inject(0, :+)

puts "There are #{total_chars} total characters in '#{user_input}'."