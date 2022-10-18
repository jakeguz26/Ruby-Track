def if_odd(odd_arr)
  odd_arr.partition do |x|
    odd_arr.index(x) < odd_arr.size / 2 + 1
  end
end


def if_even(even_arr)
  even_arr.partition do |x|
    even_arr.index(x) < (even_arr.size / 2)
  end
end

def halvsies(arr)
  if arr.size.even?
    if_even(arr)
  elsif arr.size.odd?
    if_odd(arr)
  end
end



p halvsies([1, 2, 3, 4]) 
p halvsies([1, 5, 2, 4, 3]) 
p halvsies([5]) 
p halvsies([]) 