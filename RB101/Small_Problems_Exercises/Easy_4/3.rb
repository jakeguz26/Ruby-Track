def leap_year?(year)
  if year >= 1752  
    if year % 100 == 0 && year % 400 == 0
        true
      elsif year % 4 == 0
        if year % 100 == 0
          false
        else
          true
        end
    else
    false
    end
  else
    if year % 4 == 0
      true
    else
      false
    end
  end
end
