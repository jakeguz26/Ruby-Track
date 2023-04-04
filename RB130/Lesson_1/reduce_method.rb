#  write a custom #reduce method
# #reduce essentially changes a collection into a single object

# it always accepts two block parameters: the accumulator and the current element
# -------> the accumulator defaults to the first value of the collection IF we don't specificy a different starting value
# -------> we then return the value associated with the accumulator at the end

def reduce(array, memo = 0) # <--- sets a default value to the parameter that represents the memo
  if memo == 0 # <--- memo is assigned to 0 automatically if the user does not pass in a value
    counter = 1 # <-- counter is responsible for keeping track of iteration AND for index element calling
    accum = array[memo] # <--- assigns first element from array to accum local variable

    while counter < array.size
      accum = yield(accum, array[counter])
      counter += 1
    end

  else # <--- this is the condition where the user DOES pass in an explicit accum argument
    counter = 0
    accum = memo

    while counter < array.size
      accum = yield(accum, array[counter])
      counter += 1
    end
  end

  puts accum
end

array = [1, 2, 3, 4, 5]

reduce(array) { |acc, num| acc + num }                    # => 15
reduce(array, 10) { |acc, num| acc + num }                # => 25
reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass