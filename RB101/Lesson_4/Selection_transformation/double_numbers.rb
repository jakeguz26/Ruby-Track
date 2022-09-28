def double_numbers(arr, int)
  arr.map! { |x| x * int }
end




my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers, 3)