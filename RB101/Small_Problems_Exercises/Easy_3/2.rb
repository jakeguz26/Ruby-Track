def prompt(message)
  puts "==> #{message}"
end

def addition(num_1, num_2)
  result = num_1 + num_2
  prompt("#{num_1} + #{num_2} = #{result}")
end

def subtraction(num_1, num_2)
  result = num_1 - num_2
  prompt("#{num_1} - #{num_2} = #{result}")
end

def multiplication(num_1, num_2)
  result = num_1 * num_2
  prompt("#{num_1} * #{num_2} = #{result}")
end

def division(num_1, num_2)
  result = num_1 / num_2
  prompt("#{num_1} / #{num_2} = #{result}")
end

def remainder(num_1, num_2)
  result = num_1 % num_2
  prompt("#{num_1} % #{num_2} = #{result}")
end

def exponent(num_1, num_2)
  result = num_1 ** num_2
  prompt("#{num_1} ** #{num_2} = #{result}")
end

prompt('Enter a positive integer: ')
user_input_1 = gets.chomp.to_i

prompt('Enter a second positive integer: ')
user_input_2 = gets.chomp.to_i

addition(user_input_1, user_input_2)
subtraction(user_input_1, user_input_2)
multiplication(user_input_1, user_input_2)
division(user_input_1, user_input_2)
remainder(user_input_1, user_input_2)
exponent(user_input_1, user_input_2)