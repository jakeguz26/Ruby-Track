def reverse!(arr)
  delete_number = arr.length
  counter = arr.length
  arr.length.times do  
    arr << arr[counter - 1]
    counter -= 1
  end
  delete_number.times { |x| arr.delete_at(0)}
  p arr
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true