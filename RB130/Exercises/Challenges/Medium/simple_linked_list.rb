class SimpleLinkedList
  attr_accessor :size, :head
  
  def initialize
    @head = nil
    @size = 0
  end

  def empty?
    return true if size == 0
  end

  def push(data)
    if empty?
      element = Element.new(data)
      self.size += 1
      self.head = element
    else
      next_element = Element.new(data)
      next_element.next = head
      self.size += 1
      self.head = next_element
    end   
  end

  def peek
    if @head == nil
      return nil
    else
      return head.datum
    end
  end

  def pop
    removed_head = @head
    if removed_head.next
      @head = removed_head.next
    end
    self.size -= 1
    removed_head.datum
  end

  def self.from_a(argument)
    if argument.class == Array && argument.size > 0
      list = SimpleLinkedList.new
      argument.reverse.each { |data| list.push(data) }
      return list
    end
    SimpleLinkedList.new
  end

  def to_a
    list = []
    temp_head = head
    self.size.times do |num| 
      list << temp_head.datum
      temp_head = temp_head.next
    end
    list
  end

  def reverse
    reverse_arr = self.to_a.reverse
    list = SimpleLinkedList.from_a(reverse_arr)
  end
end

class Element
  attr_accessor :datum, :next

  def initialize(int, next_elem = nil)
    @datum = int
    @next = next_elem
  end

  def tail?
    return true if !@next
  end
end