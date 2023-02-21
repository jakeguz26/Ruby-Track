class CircularQueue
  attr_accessor :arr, :additive_index

  def initialize(length)
    @arr = []
    @additive_index = 0
    length.times {|x| arr << QueuePositions.new }
    initial_counters
  end

  def enqueue(element)
    arr[additive_index].status = element
    if @additive_index == (arr.size - 1)
      @additive_index = 0
    else
      @additive_index += 1
    end
  end

  # search for instance that has the highest @deletion_counter
  def dequeue
    counter_arr = []
    returned_element = nil

    arr.each { |instance| counter_arr << instance.deletion_counter } 
    current_instance = arr[counter_arr.index(counter_arr.max)]

    returned_element = current_instance

    current_instance.reset_counter

    returned_element.status
    p counter_arr
  end

  def initial_counters
    num = arr.size
    arr.each do |instance|
      instance.deletion_counter += num
      num -= 1
    end
  end
end

class QueuePositions
  attr_reader :status
  attr_accessor :deletion_counter
  
  def initialize
    @status = nil
    @deletion_counter = 0
  end

  # everytime the setter is invoked, deletion counter increments by 1
  def status=(element)
    @status = element
    #self.deletion_counter += 1
  end

  def reset_counter
    self.deletion_counter = 0
  end

  def copy
    self
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)

puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 5
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