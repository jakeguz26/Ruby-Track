# ask the user for two numbers
# ask the user for an operator to perform
# perform the operatorion on the two numbers
# output the result

puts "Welcome to the calculator!"

puts "Please input two numbers"

print "Number #1: "
user_input_number_1 = gets.chomp.to_i

print "Number #2: "
user_input_number_2 = gets.chomp.to_i

puts "What kind of operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide "
user_input_operation = gets.chomp

case user_input_operation
when "add"
	result = user_input_number_1 + user_input_number_2
when "subtract"
	result = user_input_number_1 - user_input_number_2
when "multiply"
	result = user_input_number_1 * user_input_number_2
when "divide"
	result = user_input_number_1.to_f / user_input_number_2.to_f
end

puts result