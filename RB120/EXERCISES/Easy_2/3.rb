class House
  include Comparable

  attr_reader :price

  def <=>(other)
    self.price <=> other.price
  end

  def initialize(price)
    @price = price
  end

  def to_s
    home1.price < home2.price
  end

end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1