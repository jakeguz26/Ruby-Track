module SixCylinder
  def fun
    puts "This car is fun to drive"
  end
end


class Vehicle
  @@number_cars = 0

  
  def show_number_cars
    @@number_cars
  end

  def self.gas_mileage #this is a CLASS METHOD
    puts "You get 25 miles per gallon"
  end

  def initialize
    @@number_cars += 1 
  end

end

class MyCar < Vehicle
  COLOR = 'red'
  include SixCylinder
end

class HerCar < Vehicle
  COLOR = 'white'
end

charger = MyCar.new
tiguan = HerCar.new

p MyCar.ancestors
p HerCar.ancestors