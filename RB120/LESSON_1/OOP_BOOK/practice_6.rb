class GoodDog
  @@number_of_dogs = 0 #class variabele uses "@@"

  def initialize
    @@number_of_dogs += 1 #constructor method has access to class variable
  end

  def self.total_number_of_dogs #class method names must be prepended with #self.
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2, class method invocation does not need #self