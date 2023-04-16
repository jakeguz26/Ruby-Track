# create a method called #any? that takes an array as an argument, as well as a block

# it should return true if the block returns true. once we have a true, we need to stop iterating. 

# empty array should always return false

# algo:
# ->> iterate though the given block and check the truthyness of each return value
#  ->> use #each on the given array and then yield the block from the method to #each?


def any?(arr)
  return false if arr.empty?
  arr.each { |element| return true if yield(element) }
  false
end


p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false