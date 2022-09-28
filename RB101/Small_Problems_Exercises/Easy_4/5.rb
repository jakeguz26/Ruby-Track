def multisum(num)
  array = (1..num).to_a.select { |x| x % 3 == 0 || x % 5 == 0 }
  puts array.inject(0, :+)
  
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168