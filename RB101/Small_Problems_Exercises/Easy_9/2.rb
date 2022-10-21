#conditions for double number 
  # length is an even integer
  # first half integers == second half integers

counter = 0
first_int = 6767
as_string = first_int.to_s.chars


p new_arr = as_string.map! do |x|
  if as_string.index(x) + 1 <= (as_string.length / 2) 
    x
  end
end
  

