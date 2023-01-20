class Dog
  def initialize(name) #constructor method
    @name = name #instance variable
  end

  def name #getter method
    @name
  end

  def name=(name) #setter method
    @name = name
  end

  def speak #instance method
    p "#{@name} says woof"
  end
end

thor = Dog.new('Thor')
willow = Dog.new('Willow')

thor.name = "Thorton" #this is the same as => thor.name=("Thorton")
p thor.name