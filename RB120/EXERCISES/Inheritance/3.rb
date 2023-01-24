class Vehicle
  attr_reader :year, :bed_type

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def initialize(year, bed)
    super(year)
    @bed_type = bed
  end
end

class Car < Vehicle
end

truck1 = Truck.new(1994, 'Short')
puts truck1.year
puts truck1.bed_type