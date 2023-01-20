# because 'getter' and 'setter' methods are so common, Ruby has a built in method
# to automatically create these methods.

# ------------> #attr_accessor <-----------------
        # - creates getter and setter methods

# attr_reader -> creates the getter method
# attr_writer -> creates the setter method

class Dog
  attr_accessor :name #the symbol argumet creates the method name
  
  #if we have more states:
  #attr_accessor :name, :height, :weight <------------- use this syntax

  def initialize(name) #constructor method
    @name = name #instance variable
  end

  def speak #instance method
    p "#{name} says woof" #name here references the 'getter' method
  end
end

thor = Dog.new('Thor')
willow = Dog.new('Willow')

thor.name = "Thorton" #this is the same as => thor.name=("Thorton")
p thor.name