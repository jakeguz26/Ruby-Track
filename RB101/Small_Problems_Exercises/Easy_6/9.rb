def include?(arr, int)
  result = arr.select { |x| x == int } 
  if result.empty?
    false
  else
    true
  end
end



p include?([1,2,3,4,5], 3)
p include?([1,2,3,4,5], 6) 
p include?([], 3)
p include?([nil], nil) 
p include?([], nil) 
