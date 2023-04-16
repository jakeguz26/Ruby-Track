=begin
#one?

- this method should only return true if exactly one element from the collection evaluates to true
- we return false as soon as we evaluate a second truthy value

- empty arrays are false

=end

def one?(collection?)
  bool_arr = []
  collection.each { |element| }
end

one?([1, 3, 5, 6]) { |value| value.even? }    == true
# one?([1, 3, 5, 7]) { |value| value.odd? }     == false
# one?([2, 4, 6, 8]) { |value| value.even? }    == false
# one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# one?([1, 3, 5, 7]) { |value| true }           == false
# one?([1, 3, 5, 7]) { |value| false }          == false
# one?([]) { |value| true }                     == false