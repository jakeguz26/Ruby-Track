class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# the @@cats_count is a class variable that keeps track of the number of objects that have been instantiated
# from the Cat class. Everytime a new object is instantiated, #initialize is called and @@cats_count
# is incremented by 1

# to check this we could simply insantiate a couple Cat objects and then call the method 
# ::cats_count on the class Cat

fluffy = Cat.new('siamese')
tiger = Cat.new('barn cat')

p Cat.cats_count