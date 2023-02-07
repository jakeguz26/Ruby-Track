class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

# this will return the string "You will" + one of the random strings from line 13
# this happens due to the method lookup path. Ruby first searches the class of the instance
# of the calling object before moving up the chain. In this example, Ruby finds the requisite
# method in the sub class RoadTrip. 