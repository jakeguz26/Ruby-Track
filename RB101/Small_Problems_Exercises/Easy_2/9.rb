def prompt(message)
  puts ">> #{message}"
end

def sum(num)
  x = 0
  y = 0
  until x == num + 1
    y = x + y
    x += 1
  end
  puts "The sum of integers between 1 and #{num} is #{y}."
end

def product(num)
  x = 1
  y = 1
  until x == num + 1
    y = x * y
    x += 1
  end
  puts "The product of integers between 1 and #{num} is #{y}."
end

prompt('Please enter an integer greater than 0: ')
user_integer = gets.chomp.to_i

prompt("Enter 's' to compute the sum, 'p' to compute the product. ")
user_choice = gets.chomp

case user_choice
when 's'
  sum(user_integer)
when 'p'
  product(user_integer)
end