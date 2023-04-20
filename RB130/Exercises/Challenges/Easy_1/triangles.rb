=begin
- problem

  -> write a program that determines the kind of triangle
  -> An equilateral triangle has all three sides the same length
      An isosceles triangle has exactly two sides of the same length.
      A scalene triangle has all sides of different lengths. 
  
  -> valid triangle every side is > 0
  -> each pair of two sides must be greater than the third


- examples
- data
- algo

  -> define a class called triangle. #initialize should take 3 arguments to represent the length of sides
  -> check if valid triangle is present?
    ----> abstract a mehod to check if each side is greater than 0
    ----> abstract a method to check if each pair is greater than the third

=end

class Triangle
  attr_accessor :sides_arr

  def initialize(side_1, side_2, side_3)
    @sides_arr = [side_1, side_2, side_3]
    raise ArgumentError.new unless valid?
  end

  def kind # <--- should return the type of triangle as a string
    return "equilateral" if equilateral?
    return "isosceles" if isosceles?
    return "scalene" if scalene?
  end

  def valid?
    return true if greater_zero && side_pairs_greaterside
    false
  end

  def greater_zero # <--- checks if the legnths of sides form a valid triangle
    sides_arr.all?{ |length| length > 0 }
  end

  def side_pairs_greaterside # <--- checks if each pair is greater than the third
    true if sides_arr[0] + sides_arr[1] > sides_arr[2] && sides_arr[1] + sides_arr[2] > sides_arr[0] && sides_arr[0] + sides_arr[2] > sides_arr[1] 
  end

  def equilateral?
    return true if sides_arr.all?(sides_arr[0])
    false
  end

  def isosceles? # <--- two sides of same legnth
    return true if sides_arr[0] == sides_arr[1] || sides_arr[1] == sides_arr[2] || sides_arr[0] == sides_arr[2]
  end

  def scalene?
    return true if sides_arr[0] =! sides_arr[1] =! sides_arr[2]
  end
end