def century(int)
  case int
  when 0.. 99
    '1st'
  end
end


p century(5) 
