=begin
- problem: write a program that adds up the multiples of a given number
            - there may be several multiples
            - do not include given number

- rules: the method #to will accept a parameter which will be the target number
        - the class will be initialized with the set of multiples


- algo:

  - build a range from 0 to the target number (NOT inclusive) and then convert to an array
  - with the set of multiples, iterate through the set using #each and check if each number in the range is a multiple
  - if it is a multiple, append to array.
  - with the array, take out duplicates and sum 

=end

class SumOfMultiples
  attr_accessor :multiples
  
  def initialize(*args)
    @multiples = *args
    if multiples.empty?
      @multiples = [3, 5]
    end
  end

  def to(target)
    final_arr = []

    range_arr = (1...target).to_a
    range_arr.each do |range_num|
      multiples.each { |multiple_num| final_arr << range_num if range_num % multiple_num == 0  }
    end
    final_arr.uniq.sum
  end

  def self.to(target)
    SumOfMultiples.new.to(target)
  end
end