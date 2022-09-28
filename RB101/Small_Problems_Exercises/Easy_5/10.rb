def print_in_box(str)
  #line 1 _________________
  line_1 = '+--'
    if str.length > 0
      str.length.times { |x| line_1 << '-'}
    end
  line_1 << '+'
  puts line_1
  #line 2 _____________________
  line_2 = '|  '
  if str.length > 0
    str.length.times { |x| line_2 << ' '}
  end
  line_2 << '|'
  puts line_2
  #line 3  ________________________
  line_3 = '|  '
  if str.length > 0 
    line_3 = "| #{str} "
  end
  line_3 << '|'if str.length > 0
  str.length.times { |x| line_1 << '-'}
end

print_in_box('Thor is my best friend and i love him')