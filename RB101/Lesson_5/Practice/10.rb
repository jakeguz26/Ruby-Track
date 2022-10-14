arr_1 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
arr_2 = arr_1.map { |x| x.transform_values {|y| y + 1 }}
p arr_2