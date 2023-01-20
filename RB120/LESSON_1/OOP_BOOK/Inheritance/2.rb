class Student
  attr_accessor :grade, :name

  def initialize(grade, name)
    @grade = grade
    @name = name
  end

  def better_grade_than?(other_student)
    grade >other_student.grade
  end

  protected

  def grade
    @grade
  end

end

class Person < Student
end

joe = Person.new(100, "Joe")
bob = Person.new(80, "Bob")
puts "Good job" if joe.better_grade_than?(bob)
