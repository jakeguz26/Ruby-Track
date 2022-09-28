def double_odd_indices(arr)
  arr.map! do |x|
    if arr.index(x).odd?
      x * 2
    else
      x
    end
  end
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers) 
                    