ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
  "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


saved_age = 0

ages.each_pair do |key, value|
  if value < saved_age
    saved_age = value
  end
  if saved_age == 0
    saved_age = value
  end
end

p saved_age