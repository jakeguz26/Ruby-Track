def find_fibonacci_index_by_length(int)
  fib_nums = [1]
  counter = 0
  current_num = 1
  loop do
    fib_nums << current_num
    break if current_num.to_s.length == int
    current_num = current_num + fib_nums[counter]
    counter += 1
  end
  p fib_nums.count
end

find_fibonacci_index_by_length(2)        
find_fibonacci_index_by_length(3)        
find_fibonacci_index_by_length(10) 
find_fibonacci_index_by_length(100) 
find_fibonacci_index_by_length(1000) 
find_fibonacci_index_by_length(10000)
