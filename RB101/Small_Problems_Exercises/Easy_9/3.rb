def negative(int)
  if int > 0
    p -int
  else
    p int
  end
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      