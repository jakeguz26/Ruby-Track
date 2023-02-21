#circular queue is a list where items get added to next open position
  # --> if queue is full, delete item that has been there the longest
  # --> deleted item gets replaced by new item


# DS ==> use array to model the queue

#add two methods #enque and #dequeue
# another method to determine next open space and oldest space for deletion?

class CircularQueue
  attr_accessor :length, :queue_arr, :deletion_index, :additive_index, :counter_index
  
  def initialize(length)
    @length = length
    @queue_arr = build_queue(@length)
    @deletion_index = 0
    @counter_index = -1
    @additive_index = 0
  end

  def build_queue(num_elements) #needs to return an array of nil objects
    arr = []
    num_elements.times { |x| arr << nil }
    arr
  end

  # call instance variable that points to array and reassign the given arugment
  def enqueue(element)
    queue_arr[additive_index] = element #element assigned to curent open position
    if additive_index == (length - 1) #positiong reset to 0
      reset_additive_indices(additive_index) 
    else
      incremenent_additive_index #position incremented
    end
  end

  # deletes element that has been there the longest and returns
  # use a local variable to track index?
  def dequeue 
    return nil if @queue_arr.all?(nil)

    returned_element = queue_arr[calculate_deletion_index]
    queue_arr[counter_index] = nil
    returned_element
  end

  # incremenets instance variable additive_index
  def incremenent_additive_index
    self.additive_index += 1
  end

  #calculates current deletion index and returns it
  def calculate_deletion_index
    if counter_index == (length - 1)
      counter_index = 0
    else
      self.counter_index += 1
    end
    @deletion_index + @counter_index
  end

  def reset_additive_indices(index) # <-- index will point to instance variable deletion or additive
    self.additive_index = 0
  end

  def reset_deletion_indices(index) # <-- index will point to instance variable deletion or additive
    self.deletion_index = 0
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1) # --> [1, nil, nil]
queue.enqueue(2) # --> [1, 2, nil]
puts queue.dequeue == 1 # --> [nil, 2, nil]

queue.enqueue(3)# --> [nil, 2, 3]
queue.enqueue(4)
p queue.queue_arr
puts queue.dequeue == 2 # current deletion index should be 1

p queue.queue_arr
p queue.additive_index

queue.enqueue(5)
p queue.queue_arr
queue.enqueue(6)
p queue.queue_arr
queue.enqueue(7)
p queue.queue_arr
puts queue.dequeue #== 5

# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# queue = CircularQueue.new(4)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 4
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil