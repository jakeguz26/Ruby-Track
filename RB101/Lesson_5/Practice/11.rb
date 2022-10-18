arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr_2 = arr.map { |x| x.select { |y| y if y % 3 == 0 }}
p arr_2.reject { |x| x.empty? }