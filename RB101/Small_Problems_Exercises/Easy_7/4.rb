def swapcase(str)
  new_string = str.chars.map! do |x|
    if x == x.downcase
      x.upcase
    else
      x.downcase
    end
  end
  p new_string.join("")
end


swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'