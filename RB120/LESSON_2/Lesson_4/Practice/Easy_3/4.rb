class Cat
  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{@type} cat."
  end
end

tabby = Cat.new('tabby')
tabby.to_s

# we just have to override the standard Ruby definition of #to_s in our Cat class