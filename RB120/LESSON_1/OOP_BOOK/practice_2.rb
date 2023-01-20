module Bark
  def bark(sound)
    puts sound
  end
end

class GoodDog
  include Bark
end

thor = GoodDog.new

thor.bark("woof woof")