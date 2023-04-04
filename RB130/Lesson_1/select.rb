# write a #select method

# iterates through the object that is passed in
# evaluates the truthiness of each element inside of that object
# pushes the 'truthy' elements to an array
# returns the array with all the elements that evaluate to truthy

# i am responsible for:

# iteration
# evaluating the block
# pushing elements to new array
# returning array

# the user of the method is responsible for:
# determining the contents of the implicitt block argument

def select(array)
  counter = 0
  final_arr = [] # <--- empty array that we will populate with elements that evaluate to truthy

  while counter < array.size # <--- while loop activates if value associated with counter is less than array size
    final_arr << array[counter] if yield(array[counter]) # <--- yields to implicit block and passes in current element from array using value associated with counter
    counter += 1 # <--- increments value associated with counter by 1
  end

  final_arr # <--- returns the array that has now been populated with valid elements
end

array = [1, 2, 3, 4, 5]
p select(array) { |num| num.odd? }
p select(array) { |num| puts num }     
p select(array) { |num| num + 1 } 