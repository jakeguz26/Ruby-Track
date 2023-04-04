def each(array)
  counter = 0

  while counter < array.size
    yield(array[counter]) # <--- yielding to the implicit block and passing the array element that corresponds with current counter value as argument
    counter += 1 # <--- incrementing value associated with counter by 1
  end

  array # <--- returning the value associated with 'array' parameter which is essentially the original caller
end

each([1, 2, 3, 4, 5]) do |num|
  puts num
end