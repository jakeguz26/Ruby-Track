=begin

p
------
- write a method that returns an array of all the divisiors of the given argument
  ->>> a divisior is any number that the initial number can be divided into with a remainder of 0

e
------
divisors(1) == [1] #<--- 1 can only be divided by itself
divisors(7) == [1, 7] # <--- 7 can only be divided by 1 and itself
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

d
--------
- will probably use a combination of range and arrays

a
----
- every number can be divided by 1 and itself

- with the given number, create a range starting at 1, ending at the given number (inclusive)
- i can then convert this range to an array and iterate through the array
  ---> at each iteration, I should pass the current element to an abstracted method and check if my remainder is 0
  ---> if my remainder is 0, the element should be returned to a new array
    i should use #select

=end

def divisors(int)
  range = (1..int).to_a
  final_arr = range.select { |num| remainder_check(int, num) }
end

def remainder_check(initial_int, current_int)
  true if initial_int % current_int == 0
end

p divisors(1) == [1] #<--- 1 can only be divided by itself
p divisors(7) == [1, 7] # <--- 7 can only be divided by 1 and itself
p divisors(12) == [1, 2, 3, 4, 6, 12]

p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute