=begin
problem- create a random name for a robot

- LETTER, LETTER, INT, INT, INT

- should be a class called Robot
---> #initialize should then invoke a method that creates the name and then saves to an instance variable
---> #reset instance method should wipe the name and create a new one
---> should have a getter for the name instance variable

- data structure
  # need to smash together a string of random alement

- algo
  # use #times method 
    $ call #times on 2 and then abstract a method to return a random letter
    $ call #times on 3 and then abstract a method to return a random int

=end

class Robot
  attr_writer :name

  LETTERS = ('A'..'Z').to_a
  INTEGERS = (0..9).to_a

  @@taken_names = []

  def initialize
    @name = ''
  end

  def name
    if @name == ''
      @name = create_name
      return @name
    elsif @@taken_names.include?(@name)
      @name = create_name
      return create_name
    else
      return @name
    end
  end

  def create_name
    name_final = ''
    2.times { |num| name_final << create_letter }
    3.times { |num| name_final << create_integer }
    @@taken_names << name_final
    name_final
  end

  def create_letter
    LETTERS.sample
  end

  def create_integer
    INTEGERS.sample.to_s
  end

  def reset
    self.name = ''
  end
end

robot = Robot.new
p robot.name
p robot.name