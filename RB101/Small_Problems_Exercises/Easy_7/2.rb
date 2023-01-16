def letter_case_count(str)
  lower_arr = []
  upper_arr = []
  other_arr = []
  hash = {}
  hash[:lowercase] = 0
  hash[:uppercase] = 0
  hash[:other] = 0
  if str.chars.empty? == false
    str.chars.each do |x|
      if x == x.upcase
        puts 'yes'
      end
    end
  else
    p hash
  end
end



letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }