=begin
p----------
- write a program that can generate the lyrics for the 99 bottle beer song 
- use BeerSong class
  ---> class should include a method #verse(arg) and #lyric
  ---> #verse(5) should return the verse that correlates with the argument
        ===> so this would be '5 bottles of beer on the wall'
        ====> should be able to accept multiple arguments 
  ---> #lyric method should simply return the entire song

LYRIC RULES


- first line of verse should be the CURRENT number of bottles
- second line of verse should be the CURRENT number MINUS ONE

- verse with 1 bottle
  ---> once we get to 1, the string for bottle becomes SINGULAR
  ---> the line for 0 becomes "no more" instead of an integer

-------------------------------------------------------------------------
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
-------------------------------------------------------------------------

Data strucutre
- do i save each verse as  key/value pair in a hash?


ALGO--------------------------
- first thing, save each verse to a key/value pair
- hwne we inintialize, call an abstracted method that creates a hash where the key is an integer and value is the verse

=end

class BeerSong
  HSH = {}

  def self.lyrics
    arr_keys = (0..99).to_a.reverse
    arr_keys.each { |key| HSH[key] = create_verse(key) }# <-- call abstrtacted method that builds the string that will serve as a the value/verse
    HSH.values.map { |verse| verse + "\n" }.join
  end

  def self.create_verse(verse)
    if verse > 2
      "#{verse} bottles of beer on the wall, #{verse} bottles of beer.\nTake one down and pass it around, #{verse - 1} bottles of beer on the wall.\n"
    elsif verse == 2
      "#{verse} bottles of beer on the wall, #{verse} bottles of beer.\nTake one down and pass it around, #{verse - 1} bottle of beer on the wall.\n"
    elsif verse == 1
      "#{verse} bottle of beer on the wall, #{verse} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
    end
  end

  def self.verse(verse)
    self.lyrics
    if verse == 0
      return HSH[verse] + "\n"
    else
      return HSH[verse]
    end
  end

  def self.verses(start, stop)
    arr_range = (stop..start).to_a.reverse
    arr = arr_range.map do |key| 
      if key != stop
        verse(key) + "\n" 
      else
        verse(key)
      end
    end
    p arr.join
  end

end

# puts BeerSong.lyrics
# puts BeerSong.verse(0)
BeerSong.verses(99, 98)