def create_hash(str)
  arr = str.chars.sort.slice_when { |a, b| a != b }.to_a
  hsh = arr.each_with_object({}) do |key, value| 
    value[key[0]] = key.count 
  end
  p hsh
end

statement = "The Flintstones Rock"
create_hash(statement)