def multiply_all_pairs(arr_1, arr_2)
  final_arr = []
  arr_1.each do |x|
    arr_2.each do |y|
      final_arr << (y * x)
    end
  end
  p final_arr.sort
end




p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]