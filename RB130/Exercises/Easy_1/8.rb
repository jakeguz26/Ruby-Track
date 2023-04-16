# none? method

# every element from the collection gets passed to the implicit block
# #none? returns true if NO ELEMENTS from the collection evaluate to true

  def none?(collection)
    collection.each { |element| return false if yield(element) } # <-- method returns false if we yield any truthy values
    true
  end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true