def reverse(arr)
  new_arr = []
  arr.each {|x| new_arr.prepend(x)}
  p new_arr
end



list = [1, 2, 3]
new_list = reverse(list)

