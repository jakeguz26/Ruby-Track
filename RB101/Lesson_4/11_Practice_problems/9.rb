def titleize(str)
  new_str = str.split(" ")
  new_str.map! { |x| x.capitalize }
  new_str.join(" ")
end

words = "the flintstones rock"
p titleize(words)