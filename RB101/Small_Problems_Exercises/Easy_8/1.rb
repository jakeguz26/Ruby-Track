def sum_of_sums(arr)
  last_arr = []
  sub_arr = []
  counter = 0
  arr.each_index do |x|
    arr.each_index do |y|
      sub_arr << arr[y] if y <= x
    end
    last_arr << sub_arr
    counter += 1
    sub_arr = []
  end
  last_arr.flatten.inject(0, :+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35