=begin
- problem: given a letter from the alphabet, construct a diamond shape where the given letter is the WIDEST point of the diamond

- given c:

  A
 B B
C   C
 B B
  A

    A
   B B
  C   C
 D     D
E       E
 D     D
  C   C
   B B
    A



RULES
- the width and height are ALWAYS the same
- A row is the only row with one letter

- A is always MINUS one space from the total letters
- each conescutive row, the space before FIRST letter is decreased by 1
- each consecutive row, the space BETWEEN the letters is increased by 2 (we begin at 1, 3, 5, 7....)

data structure
- with the given letter, i could make a range -> array of each letter
  ---> given c, i could make a range of A..C --> A, B, C
  ---> i could then create B, A to represent the bottom half of the strucutre (arr[0..-2])

algo
- create an array that contains each letter that will be included in the structure
- iterate through the array and for each element, call these abstracted methods
  ---> create intital space
  ---> write letter
  ---> create space in between
  ---> write second letter

- bottom
  ---> initial space incremented by 1 at each iteration
  ---> in between space decreased by 2
          
=end

class Diamond
  attr_accessor :arr, :final_string, :space, :between_space

  def self.make_diamond(letter)
    diamond = Diamond.new(letter)
    diamond.final_string
  end

  def initialize(letter)
    @arr = ('A'..letter).to_a
    @final_string = ''
    @space = (arr.size - 1)
    @between_space = 1
    iterate_top
    iterate_bottom
  end

  def iterate_top
    arr.each do |letter|
      if letter == 'A'
        final_string << (initial_space + letter + initial_space + "\n")
        @space -= 1
      else
        final_string << (initial_space + letter + second_space + letter + initial_space + "\n")
        @space -= 1
      end
    end
  end

  def iterate_bottom
    @space = 1
    @between_space -= 4
    bottom_arr = arr[0..-2]
    bottom_arr.reverse.each do |letter|
      if letter == "A"
        final_string << (bottom_initial_space + letter + bottom_initial_space + "\n")
        @space += 1
      else
        final_string << (bottom_initial_space + letter + bottom_second_space + letter + bottom_initial_space + "\n")
        @space += 1
      end
    end
  end

  def initial_space
    space_string = ''
    space.times { |num| space_string << " " }
    space_string
  end

  def second_space
    space_string = ''
    between_space.times { |num| space_string << " " }
    @between_space += 2
    space_string
  end

  def bottom_initial_space
    space_string = ''
    space.times { |num| space_string << " " }
    space_string
  end

  def bottom_second_space
    space_string = ''
    between_space.times { |num| space_string << " " }
    @between_space -= 2
    space_string
  end

end

puts Diamond.make_diamond('B')