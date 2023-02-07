class BeesWax
  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

# simply add attr_accessor followed by the symbol of the instance variable we are instantiating
# this gives us access to the getter and setter for @type