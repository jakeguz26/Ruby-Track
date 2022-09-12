def count_occurrences(list_of_vehicles)
  car = list_of_vehicles.count('car')
  truck = list_of_vehicles.count('truck')
  suv = list_of_vehicles.count('SUV')
  motorcycle = list_of_vehicles.count('motorcycle')
  result = <<-MSG
    car => #{car}
    truck => #{truck}
    SUV => #{suv}
    motorcyvle => #{motorcycle}
  MSG
  result
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurrences(vehicles)
