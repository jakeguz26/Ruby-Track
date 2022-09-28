# P- input: array
# output: a hash of Fred: 0, Barney: 1...
# rules, dont be afraid to mutate previous array


flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = flintstones.each_with_object({}) do |value, hash|
  hash[value] = flintstones.index(value)
end

p hash