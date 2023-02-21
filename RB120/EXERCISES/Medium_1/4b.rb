# enqueue --> initially fills spots in a row
#         --> once this condition has been fulfilled, replace the oldest element
#         --> swapped element gets counter reset 


# dequeue --> deletes element with the highest counter state and returns

class CircularQueue
  attr_accessor :arr, :initial_index, :next_index

  def initialize(length)
    @arr = []
    @initial_index = 0
    length.times {|x| arr << QueuePositions.new }
    @next_index = 0
  end

  def enqueue(element)
    self.initial_index = 0 if (arr.size == initial_index)
    arr[initial_index].status = element
    self.initial_index += 1
    activate_counter
  end

  # deletes instance that has highest counter state
  # returns former element and replaces with nil
  def dequeue
    return nil if all_nill?
    returned_value = (arr[max_counter].status).clone # <-- returns current value
    arr[max_counter].status = nil
    returned_value
  end

  # sort an array of counter values and returns max
  def max_counter
    counter_arr = []
    arr.each do |instance|
      counter_arr << instance.counter
    end
    counter_arr.index(counter_arr.max) #returns index of highest counter
  end

  # increments counter unless the object  =is nil
  def activate_counter
    arr.each do |instance|
      instance.counter += 1 unless instance.starting_state == false
    end
  end

  def all_nill?
    temp_arr = []
    arr.each { |instance| temp_arr << instance.status }
    temp_arr.all?(nil)
  end
end

class QueuePositions
  attr_reader :status
  attr_accessor :counter, :starting_state
  
  def initialize
    @status = nil
    @counter = 0
    @starting_state = false
  end

  def status=(element)
    self.starting_state = true
    @status = element
    reset_counter
  end

  def reset_counter
    self.counter = 0
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)

puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)

puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)

puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil