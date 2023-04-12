require "minitest/reporters"
Minitest::Reporters.use!
require 'minitest/autorun' # <--- loads necessary files from minitest gem

require_relative 'car' # <---include the file we want to test

class CarTest < MiniTest::Test # <--- test class MUST sub-class from Minitest::Test. This is how we get our methods
  def test_wheels # <--- we write tests by defining instance methods that start with "test_"
    car = Car.new #<--- first we have to set up the data we actually want to test
    assert_equal(4, car.wheels) # <--- this particular assertion takes two arguments. The expected value and the actual value
  end

  def test_bad_wheels
    skip
    car = Car.new
    assert_equal(3, car.wheels)
  end
end