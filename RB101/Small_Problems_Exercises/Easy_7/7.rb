def multiply_elements(arr)
  total = 1
  arr.each { |x| total *= x }
total.to_f
end

def find_average(float, arr)
  float / arr.size
end

def show_multiplicative_average(arr)
  p find_average(multiply_elements(arr), arr).round(3)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667