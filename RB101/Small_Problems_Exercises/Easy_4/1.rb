def short_long_short(str_1, str_2)
  longest = str_1.length <=> str_2.length
  case longest
  when 1
    str_2 + str_1 + str_2
  when -1
    str_1 + str_2 + str_1
  end
end

puts short_long_short('hello_my_name_is', 'jake')