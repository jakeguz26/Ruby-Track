def sequence(int)
  counter = 1
  arr = []
  int.times do |x|
    arr << counter
    counter += 1
  end
  p arr
end



sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
