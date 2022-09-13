def area_calculation(length, width)
  area = length * width
end

def area_conversion(area_meters)
  area_feet = area_meters * 10.7639
end

puts 'Enter the length of the room in meters: '
length_input = gets.chomp.to_i

puts 'Enter the width of the room uin meters: '
width_input = gets.chomp.to_i

area_meters = area_calculation(length_input, width_input)

puts "The area of the room is #{area_meters} square meters (#{area_conversion(area_meters)} feet)."