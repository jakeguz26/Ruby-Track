arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr_2 = arr.select do |x|
  x.all? do |a, b|
    b.all? {|x| x.even? }
  end
end

p arr_2

#return array of hashes that have only even integers