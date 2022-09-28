def remove_vowels(arr)
  p arr.map { |x| x.delete 'aeiouAEIOU'}
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white)) 
remove_vowels(%w(ABC AEIOU XYZ)) 