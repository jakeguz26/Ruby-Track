def fibonacci(int)
  fib_arr = [1, 1]
  fib_arr << (fibonacci(fib_arr[0]) + fibonacci(fib_arr[1]))
  return fib_arr
end

p fibonacci(3)