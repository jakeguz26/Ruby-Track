def triangle(int)
  counter = int
  printer = 1
  int.times do |x|
    (counter-1).times {|x| print " "}
    printer.times {|x| print "*"}
    puts "\n"
    counter -= 1
    printer += 1
  end
end

triangle(15)