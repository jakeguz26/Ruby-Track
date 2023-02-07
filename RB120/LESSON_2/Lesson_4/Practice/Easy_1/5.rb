class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# only Pizza will create objects with an instance variable
# instance variables are denoted by "@"