def crunch(str)
  char = ''
  arr_chars = str.chars
  new_arr = arr_chars.map do |x|
    if char != x
      char = x
    end
  end
  new_arr.delete_if { |x| x == nil }
  new_arr.join
end





p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba') 
p crunch('ggggggggggggggg') 