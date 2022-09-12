def digit_list(num)
  my_array = num.to_s.split("")
  new_my_array = my_array.map { |x| x.to_i}
  return new_my_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     
puts digit_list(7) == [7]                     
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] 
puts digit_list(444) == [4, 4, 4]             