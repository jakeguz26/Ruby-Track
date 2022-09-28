def palindrome?(str)
  true if str == str.reverse
end

def real_palindrome?(str)
  # if palindrome?(str.downcase) == true
    return true
  end
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           
puts real_palindrome?("Madam, I'm Adam") == true 
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false