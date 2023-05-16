# - problem: given a string of digits and an length, return all the possible sub arrays that equal the given length

class Series
  attr_reader :slice

  def initialize(slice)
    @slice = slice
  end

  def slices(length)
    if length > slice.size
      raise ArgumentError
    end
    final_arr = []
    0.upto(slice.size - length) { |num| final_arr << slice[num, length].chars.map { |element| element.to_i } }
    final_arr
  end
end

series = Series.new('1234')
series.slices(2)