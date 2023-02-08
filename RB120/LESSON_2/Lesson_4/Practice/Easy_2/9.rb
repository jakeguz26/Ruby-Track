class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# adding a method called #play to the Bingo class would override the method from the super class
# Game. If Bingo called its own #play, the instance method #play is that is defined in Bingo will be
# invoked instead of the #play from Game.