def swap(str)
  arr = str.split(' ')
  new_arr = arr.each do |x|
    x[0], x[x.length - 1] = x[x.length - 1], x[0]
  end
  p new_arr.join(" ")
end

swap('Oh what a wonderful day it is')

# first letter is [0], last letter will be [#.length - 1]
# pop removes last element