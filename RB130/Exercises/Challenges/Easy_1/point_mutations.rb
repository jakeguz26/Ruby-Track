class DNA
  attr_accessor :strand_1, :strand_2

  def initialize(strand)
    @strand_1 = strand
  end

  def hamming_distance(strand_2)
      @strand_2 = strand_2
      calc_distance
  end

  def calc_distance
    if strand_1.size > strand_2.size
      strand_1_larger
    else
      strand_2_larger
    end
  end

  def strand_1_larger
    counter = 0
    0.upto(strand_2.size - 1) { |index|counter += 1 if strand_1[index] != strand_2[index] }
    counter
  end

  def strand_2_larger
    counter = 0
    0.upto(strand_1.size - 1) { |index|counter += 1 if strand_1[index] != strand_2[index] }
    counter
  end

end