def multiply_elements(arr)
  arr[0] * arr[1]
end

def multiply_list(arr_1, arr_2)
  last_arr = []
  big_arr = arr_1.zip(arr_2)
  big_arr.each do |x|
    last_arr << multiply_elements(x)
  end
  p last_arr
end




multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]