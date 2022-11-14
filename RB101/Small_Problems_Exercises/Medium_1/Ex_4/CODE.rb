# first part, build out initial data structure
# so with dicitionary idea.. it'd be {1: false, 2: false, 3: false}

def build_structure(int)
  light_dict = {}
  counter = int
  loop do
    light_dict[counter] = false
    counter -= 1
    if counter == 0
      break
    end
  end
  light_dict.sort.to_h
end

#this method `flips` our switch

def flip_switch(bool)
  return false if bool == true
  return true if bool == false
end

def convert_to_arr(dict)
  arr = dict.to_a.select do |x|
    x.include?(true)
  end
  remove_bool(arr)
end

def remove_bool(arr)
  arr.map do |x|
    x[0]
  end
end

n = 100
lights = build_structure(n)

#next, we need to iterate `n` times. and at each cycle, we 'flip' 
#the value of the keys that are multiples of that cycle.

n.times do |x|
  lights.each_pair do |key, value|
    if key % (x + 1) == 0
      lights[key] = flip_switch(value)
    end
  end
end

p convert_to_arr(lights)