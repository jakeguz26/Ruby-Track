class MyCar
  attr_accessor :year, :color, :model, :speed
  
  def self.gas_mileage #this is a CLASS METHOD
    puts "You get 25 miles per gallon"
  end

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m

    @speed = 0
  end

  def to_s #overrides #to_s -> calling #puts on the object will invoke this block instead
    "your #{model} is the coolest car ever."
  end


  def speed_up(int)
    puts "I am now going #{@speed += int} miles an hour"
  end

  def brake(int)
    puts "I've slowed down to #{@speed -= int} miles an hour."
  end

  def off
    puts "The car has been turned off"
  end

end

charger = MyCar.new('2008', 'Red', 'Charger')

charger.speed_up(15)
charger.brake(10)
charger.off

puts charger