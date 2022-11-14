def block_word?(str)
  blocks_arr = [
    ['B', 'O'],     
    ['X', 'K'],
    ['D', 'Q'],
    ['C', 'P'],
    ['N', 'A'],
    ['G', 'T'],
    ['R', 'E'],
    ['F', 'S'],
    ['J', 'W'],
    ['H', 'U'],
    ['V', 'I'],
    ['L', 'Y'],
    ['Z', 'M']
  ]
  
  arr_bools = []
    
  blocks_arr.each do |x|
    str.chars.each do |chars|
      if x.include?(chars)
        blocks_arr.delete(x)
        arr_bools << true
      else
        false 
      end
    end
  end
  p arr_bools
end

block_word?('BUTCH')