def age_label(int)
  case
  when int < 18
    'kid'
  when int >= 18
    'adult'
  when int >= 65
    'senior'
  end
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

hsh = munsters.each_pair do |key, value|
  value['age_group'] = age_label(value['age'])
end

p hsh