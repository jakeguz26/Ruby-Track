class GoodDog
  def self.what_am_i
    puts "I'm a good dog class"
  end

  # def initialize
  #   puts "im a good boy"
  # end
  
  def woof
    puts "woof"
  end

end

thor = GoodDog.new
thor.woof