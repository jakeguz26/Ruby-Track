def ascii_value(str)
  arr = str.chars.map { |x| x.ord}
  arr.inject(0, :+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0