def reverse_sentence(string)
  string_as_array = string.split.reverse
  end

printed_array = reverse_sentence("My dog's name is Thor")
puts printed_array.join(' ')