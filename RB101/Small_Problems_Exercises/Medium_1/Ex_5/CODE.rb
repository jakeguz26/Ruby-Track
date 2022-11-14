def diamond(int)
  arr_values = build_arr(int)
  arr_spaces = build_space(arr_values, int)
  hsh = arr_spaces.zip(arr_values).to_h
  hsh.each_pair do |keys, values|
    print_space(keys) + print_star(values)
    puts " "
  end
  last_hsh =hsh.reject {|keys, values| keys == 0 }.sort.to_h
  last_hsh.each_pair do |keys, values|
    print_space(keys) + print_star(values)
    puts " "
  end
end

#build method to calculate space, will return arr of int
def build_space(arr, int)
  space_amounts = arr.map do |x|
    num_space = (int - x) / 2
  end
  space_amounts
end

def print_space(int)
  int.times { |space| print" " }
end

def print_star(int)
  int.times { |star| print"*"}
end

#build method that constructs arr
def build_arr(int)
  start = 1
  arr = []
  loop do
    arr << start
    if start == int
      loop do
        start -= 2
        arr << start
        if start == 1
          break
        end
      end
      break
    else
      start += 2
    end
  end
  arr
end

diamond(11)