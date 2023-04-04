class Dog
  def initialize(name)
    @name = name
  end


  def show_dogs(other)
    puts "#{name} and #{other.name}"
  end

  protected

  attr_reader :name

end

thor = Dog.new('thor')
willow = Dog.new('willow')

thor.show_dogs(willow)