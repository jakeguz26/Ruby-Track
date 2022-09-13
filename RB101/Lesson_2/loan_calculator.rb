def prompt(message)
  puts("=> #{message}")
end

def percent_converter(x)
	result = x.to_f / 100
	return result
end

def monthly_rate(num)
	result = num.to_f / 12
	return result
end

def duration_months(years)
	result = years * 12
	return result
end

def final_calculation(rate, months, amount)
	result = amount * (rate / (1 - (1 + rate)**(-months)))
	return result
end


prompt("Welcome to the load calculator!")

prompt("How much is your loan?: ")
loan_amount = gets.chomp.to_i

prompt("What is the APR? Please enter a %: ")
apr = gets.chomp.to_i


prompt("What is the legnth of the loan in years?")
loan_duration = gets.chomp.to_i

#######################################################

monthly_rate = percent_converter(monthly_rate(apr)) #find the monthly itnerest rate


monthly_duation = duration_months(loan_duration) #find the duration in months

monthly_payment = final_calculation(monthly_rate, monthly_duation, loan_amount)

puts "Your monthly payment is #{monthly_payment.round(2)}."