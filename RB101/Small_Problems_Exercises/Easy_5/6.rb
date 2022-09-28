def create_dict(arr)
  p arr.to_h { |key| [key[0], key.length] }
end

def word_sizes(str)
  new_arr = str.split.map { |x| x.length }
  arr_duplicates = new_arr.group_by { |x| x }.values
  create_dict(arr_duplicates)
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}