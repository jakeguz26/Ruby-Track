def repeater(str)
  arr_chars = str.chars
  double_arr = arr_chars.map! do |x|
    x << x
  end
  p double_arr.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''