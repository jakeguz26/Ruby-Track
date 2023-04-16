=begin
- write a method that deciphers the encryoted names

- each character must be replaced by the character 13 places to the left
- [a, b, c, d, e, f, g...] = forward movement is total - backward movement
- [0, 1, 2, 3, 4, 5, 6...]

- invliad indices are 0 through 12
- if the current letter has an index that falls within that range, look forward
    -> subtract current index from 25 ===> that will result in the valid index

=end

ALPHA = ("a".."z").to_a

def decipher(str)
  name_arr =  str.downcase.split("")
  final_arr = name_arr.map do |element|
    if ALPHA.include?(element)
      swap_letter(element) 
    else
      " "
    end
  end
  p final_arr.join("")
end

def swap_letter(char) # <--- should return an integer that will be the proper index
  p current_index = index(char) # <-- this is assigned to an integer

  if current_index > 12
    ALPHA[current_index - 13] # <-- reutrns a char
  else
    ALPHA[index_forward + current_index] # <-- returns a char
  end
end

def index(character) # <--- returns index
  ALPHA.index(character)
end

def index_forward # <-- returns index
  (25 - 12) 
end

decipher('Nqn Ybirynpr')