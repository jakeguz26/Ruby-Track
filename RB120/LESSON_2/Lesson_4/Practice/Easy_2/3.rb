module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

# you can use the method #ancestors
# this method is a class method so it should be called like so:
# ======> Orange.ancesotrs