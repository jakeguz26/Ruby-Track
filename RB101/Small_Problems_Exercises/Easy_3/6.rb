def xor?(x, y)
  case x
  when true
    case y
    when false 
      return true
    end
  end
  case y
  when true
    case x
    when false
      return true
    end
  end    
end



puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false