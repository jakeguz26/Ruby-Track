class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

#case 1---> 'hello will output to the screen'
hello = Hello.new
hello.hi

#case 2 --> NoMethod error will be thrown
hello = Hello.new
hello.bye

#case 3 ---> ArgumentNeeded error will be thrown
hello = Hello.new
hello.greet

#case 4 --- > /goodbye' will output to the screen
hello = Hello.new
hello.greet("Goodbye")

#case 5 ---> an error will throw since hi is not defined as a class method
Hello.hi