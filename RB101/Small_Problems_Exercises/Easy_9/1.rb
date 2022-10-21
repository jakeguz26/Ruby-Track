def greetings(arr, hsh)
  puts " Hello #{arr.join(' ')}, you are a great #{hsh[:title]} #{hsh[:job]}."
end

greetings(['Jake', 'Guzman'], {title: 'professional', job: 'musician'})