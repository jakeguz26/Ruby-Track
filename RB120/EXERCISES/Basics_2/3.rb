class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    p self
  end


end

kitty = Cat.new('Sophie')
kitty.identify