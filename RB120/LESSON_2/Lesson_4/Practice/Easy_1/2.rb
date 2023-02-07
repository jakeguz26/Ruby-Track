module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed

  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed

  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

civic = Car.new
toyota = Truck.new

civic.go_fast
toyota.go_fast

# include the module in both classes and then call the method #go_fast that is included
# in the module on both of the instances of the two classes