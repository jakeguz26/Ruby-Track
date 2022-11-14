def letter_case_count(str)
  lowercase = 0
  uppercase = 0
  neither = 0
  str.chars.each do |x|
    if x == x.downcase
      lowercase += 1
    end
  end
  p lowercase
end





letter_case_count('ABCabc123')
