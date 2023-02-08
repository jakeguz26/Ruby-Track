class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer # --> this would throw an error since ::manufacturer is defined as a class method
tv.model # --> this would invoke the instance method #model

Television.manufacturer # --> this would invoke the class method ::manufacturer
Television.model # --> this would throw an error since #model is an instance method