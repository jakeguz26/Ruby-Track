def normal_greeting(name)
  puts "Hello #{name}."
end

def loud_greeting(name)
  puts "HELLO #{name.delete('!')}. WHY ARE WE SCREAMING."
end

puts 'What is your name?'
user_input = gets.chomp

unless user_input.include?('!')
  normal_greeting(user_input) 
else
  loud_greeting(user_input)
end
