def interleave(arr_1, arr_2)
  counter = 0
  new_arr = []
  loop do
    new_arr << arr_1[counter]
    new_arr << arr_2[counter]
    counter += 1
    break if counter == arr_1.size
  end
  p new_arr
end


interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']