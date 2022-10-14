arr = ['10', '11', '9', '7', '8']

arr.map! { |x|x.to_i }
arr.sort! { |x, y| y <=> x }
p arr.map! { |x| x.to_s }