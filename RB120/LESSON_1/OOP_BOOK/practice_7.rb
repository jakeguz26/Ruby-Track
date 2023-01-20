class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super #this key word calls the #initialize method from line 5 but passes in the 'color' param
    @color = color
  end
end

bruno = GoodDog.new("brown")        # => #<GoodDog:0x007fb40b1e6718 @color="brown", @name="brown">

class BadDog < Animal
  def initialize(age, name)
    super(name) #this time, we pass in an argument to super keyword. This argument in turn gets 
    # passed to the method #initialize in the superclass on line 3
    @age = age
  end
end

BadDog.new(2, "bear")        # => #<BadDog:0x007fb40b2beb68 @age=2, @name="bear">

