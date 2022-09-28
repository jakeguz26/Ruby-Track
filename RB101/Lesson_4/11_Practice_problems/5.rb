flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |x|
  if x.include?('Be')
    puts flintstones.index(x)
  end
end