def center_of(str)
  str_length = str.size
  if str_length.odd?
    index_odd = (str_length - 1) / 2
    p str.chars[index_odd]
  else
    index_even = (str_length - 1) / 2
    p str[index_even] + str[index_even + 1]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'