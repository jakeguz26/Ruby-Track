def fizzbuzz(first, last)
  (first..last).each do |num|
    if num % 3 == 0 && num % 5 == 0
      puts "fizz buzz"
    elsif num % 3 == 0
      puts "fizz"
    elsif num % 5 == 0
      puts "buzz"
    else
      puts num
    end
  end
end


fizzbuzz(1, 100)