def string_to_integer(str)
  new_arr = 0
  str.chars.each do |x|
    new_arr + return_int_object(x)
  end
p new_arr
end

def return_int_object(char)
  int = 0
  if DIGITS.include?(char)
    int = DIGITS[char]
  end
  int
end


DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}





puts string_to_integer('4321') == 4321