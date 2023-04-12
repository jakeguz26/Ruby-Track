class TypeError < StandardError
end

class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  # create instance method that adds todo objects and returns total list

  def add(todo_instance)
    if todo_instance.class == Todo
      todos << todo_instance 
    else
      raise TypeError, "Can only add Todo objects"
    end
    todos
  end

  # create instance method that returns the size of the list

  def size
    todos.size
  end

  def first
    todos[0].title
  end

  def last
    todos[-1].title
  end

  def to_a
    todos.map {|instance| instance }
  end

  def done?
    true if todos.all? {|instance| instance.done == true }
    false
  end

  def item_at(index)
    todos.fetch(index).title
  end

  def mark_done_at(index)
    todos.fetch(index).done!
  end

  def mark_undone_at(index)
    todos.fetch(index).undone!
  end

  def done!
    todos.each {|instance| instance.done! }
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(index)
    todos.delete(todos.fetch(index))
  end

  def to_s
    puts "--- Today's Todos ---"
    todos.each {|instance| puts instance }
  end

  def each
    counter = 0

    while counter < todos.size
      yield(todos[counter]) # <-- yields to the implicit block
      counter += 1
    end
    self
  end

  def select
    counter = 0
    arr = []

    while counter < todos.size
      result = yield(todos[counter])
      arr << todos[counter] if result == true
      counter += 1
    end
    new_list = TodoList.new('More Todos')
    arr.each {|todo_instance| new_list.add(todo_instance) }
    new_list
  end

  def find_by_title(str)# <-- searches through todos and needs to 'get' the title4
    self.each {|instance| return instance if str == instance.title }
    nil
  end

  def all_done # <-- returns a new list of only the done items
    new_list = self.select {|instance| instance.done? }
    new_list.title = "New Todos"
    new_list
  end

  def [](index)
    todos[index]
  end

end

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

results = list.select { |todo| todo.done? } # <--- should return an array of truthy elements

list.find_by_title('Buy milk')
list.all_done