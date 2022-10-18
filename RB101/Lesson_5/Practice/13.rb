arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr_2 = arr.sort_by do |x|
  x.select {|y| y.odd? }
end

p  arr_2
  