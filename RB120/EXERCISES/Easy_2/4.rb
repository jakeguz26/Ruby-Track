class Transform
  def initialize(letters)
    @string = letters
  end

  def uppercase
    @string.upcase
  end

  def self.lowercase(str)
    str.downcase
  end
end


my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')