def reverse_words(string)
  new_array = string.split
  new_array.collect! do |x|
    if x.size > 5
      x.reverse
    else
      x
    end
  end
  new_array.join(' ')
end

p reverse_words("This word is the same but thios woooooord should reverse.")
