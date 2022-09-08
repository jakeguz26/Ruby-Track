# ask the user for two numbers
# ask the user for an operator to perform
# perform the operatorion on the two numbers
# output the result

def prompt(message)
	puts("=> #{message}")
end

def valid_number?(num)
	num.to_i != 0
end

def operation_to_message(op)
	case op
	when '1'
		"Adding"
	when "2"
		"Subtracting"
	when "3"
		"Multiplying"
	when "4"
		"Dividing"
	end
end

prompt("Welcome to the Calculator! Enter your name: ")
name = ''
loop do
	name = gets.chomp

	if name.empty?
		prompt("Make sure to use a valid name.")
	else
		break
	end
end

loop do
	prompt("Please input two numbers")

	user_input_number_1 = ''
	loop do
		prompt("Number #1: ")
		user_input_number_1 = gets.chomp.to_i

		if valid_number?(user_input_number_1)
			break
		else
			prompt("Hmm.... that doesn;t look like a valid number.")
		end
	end

	user_input_number_2 = ""
	loop do
		prompt("Number #2: ")
		user_input_number_2 = gets.chomp.to_i

		if valid_number?(user_input_number_2)
			break
		else
			prompt("Hmm... that doesn't look like a valid number.")
		end
	end

	operator_prompt = <<-MSG
		What operation would you like to perform?
		1) Add
		2) Subtract
		3) Multiply
		4) Divide
	MSG
	
	prompt(operator_prompt)
	user_input_operation = ""
	
	loop do
		user_input_operation = gets.chomp
		if %w(1 2 3 4).include?(user_input_operation)
			break
		else
			prompt("Must choose 1, 2, 3, 4")
		end
	end

	prompt("#{operation_to_message(user_input_operation)} the two numbers...")

	result = case user_input_operation
	when "1"
		user_input_number_1 + user_input_number_2
	when "2"
		user_input_number_1 - user_input_number_2
	when "3"
		user_input_number_1 * user_input_number_2
	when "4"
		user_input_number_1.to_f / user_input_number_2.to_f
	end

	puts result
	prompt("Do you want to perform another calculation? (Y to calculate again)")
	answer = gets.chomp
	break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator!!!")