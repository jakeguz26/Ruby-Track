=begin
- P === given an array of integers, return an array of the missing numbers
- E
- D
- A
  

  -> return empty array if theres only 1 integer
  -> return rempty array if the given integers form valid array 
  -> first step is figuring out the the starting and ending integers 

=end

def missing(arr)
  final_arr = []
  return final_arr if arr.size == 1

  sorted_arr = arr.sort
  return final_arr if valid_arr?(sorted_arr) == true # <-- returns empty array if this method returns true
  construct_arr(sorted_arr)


end

def valid_arr?(arr)
  full_range_arr = (arr[0]..arr[-1]).to_a
  return true if full_range_arr == arr
end

def construct_arr(arr)
  full_range_arr = (arr[0]..arr[-1]).to_a
  full_range_arr.select {|integer| true unless arr.include?(integer) }
end



p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []