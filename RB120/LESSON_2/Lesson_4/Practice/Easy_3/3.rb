class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

thor = AngryCat.new(10, 'thor')
willow = AngryCat.new(6, 'willow')

# we just call #new on the class we want to create an instance of. 
# because #initialize is explicitly defined in the class to accept two arguments,
# we must also pass in two arguments when #new is invoked. 

# this method invocation will return a new object which is then assigned to a local variable

# we simply replicate this twice and we have two separate objects