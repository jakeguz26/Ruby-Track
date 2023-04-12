require 'minitest/autorun'

class Car
  attr_accessor :wheels, :name

  def initialize
    @wheels = 4
  end

  def ==(other) # <---- the assertion ioin lline 23 now works because we have implented the method needed to run the test                      
    other.is_a?(Car) && name == other.name
  end
end

class CarTest < MiniTest::Test
  def test_value_equality
    car1 = Car.new
    car2 = Car.new

    car1.name = "Kim"
    car2.name = "Kim"

    assert_equal(car1, car2) # <--- this fails because we have no way of using #== on our custom objects
  end
end