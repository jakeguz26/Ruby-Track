def get_grade(int_1, int_2, int_3)
  score = ((int_1 + int_2 + int_3) / 3)
  case score
  when 90..100
    puts "A"
  when 80..89
    puts "B"
  when 70..79
    puts "C"
  when 60..69
    puts "D"
  when 0..59
    puts "F"
  end
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"