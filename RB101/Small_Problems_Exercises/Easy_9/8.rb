def sequence(count, sequence)
  arr = []
  starting = sequence
  count.times do |x|
    arr << starting
    starting += sequence
  end
end




sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []