def stringy(num)
  binary = ""
  num.times { |x| x.even? ? binary += "1" : binary += "0" }
  binary
end

puts stringy(10)