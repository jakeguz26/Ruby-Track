ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
  "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


sum_ages = 0

ages.each_value do |x|
  sum_ages += x
end

p sum_ages