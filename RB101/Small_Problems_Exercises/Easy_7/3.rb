def word_cap(str)
  p str.split.map! { |x| x.capitalize }.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
