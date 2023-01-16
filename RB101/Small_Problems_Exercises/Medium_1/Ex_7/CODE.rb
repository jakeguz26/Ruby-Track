def word_to_digit(str)
  new_str = str.split(" ")
  p new_str
  new_str.each_index do |index|
    if check_true(new_str[index])
      new_str[index] = check_hash(new_str[index])
      p new_str[index]
    end
  end
  p new_str.join(" ")
end

def check_hash(str)
  hsh_numbers = {
    'one' => '1',
    'two' => '2',
    'three' => '3',
    'four' => '4',
    'five' => '5',
    'six' => '6',
    'seven' => '7',
    'eight' => '8',
    'nine' => '9',
    'zero' => '0'
  }
  number = 0
  hsh_numbers.each_pair do |key, value|
    if str == key
      number = value
    end
  end
  number unless number == 0
end

def check_true(str)
  arr = ['one','two','three','four','five','six','seven','eight','nine','zero']
  true if arr.include?(str)
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'