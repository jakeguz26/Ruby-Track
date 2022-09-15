def prompt(message)
  puts "==> #{message}"
end

list_5_integers = []

prompt("Enter the first number: ")
first = gets.chomp
list_5_integers.push(first)

prompt("Enter the second number: ")
second = gets.chomp
list_5_integers.push(second)

prompt("Enter the third number: ")
third = gets.chomp
list_5_integers.push(third)

prompt("Enter the fourth number: ")
fourth = gets.chomp
list_5_integers.push(fourth)

prompt("Enter the fifth number: ")
fifth = gets.chomp
list_5_integers.push(fifth)

prompt("Enter the last number: ")
last = gets.chomp

if list_5_integers.include?(last)
  prompt("#{last} appears in #{list_5_integers}.")
else
  prompt("#{last} does not appear.")
end

