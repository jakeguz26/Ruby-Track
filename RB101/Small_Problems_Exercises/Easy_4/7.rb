def string_to_integer(str)
  new_int = 0
  str.chars.each do |x|
    new_int + x.ord - 48
  end
  puts new_int
end


string_to_integer('4321') == 4321
# string_to_integer('570') == 570