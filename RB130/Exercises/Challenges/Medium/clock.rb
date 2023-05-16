class Clock
  attr_reader :hour, :minute

  def self.at(hour = 0, minute = 0)
    Clock.new(hour, minute)
  end

  def initialize(hour, minute)
    @hour = prepend_0(hour).to_s
    @minute = prepend_0(minute).to_s
  end

  def to_s
    @hour + ':' + @minute 
  end

  def prepend_0(element)
    return element.to_s.prepend("0") if element.to_s.size == 1
    return element
  end

  def +(minutes) # <--- this method will be used to add minutes to the clock
    new_minute = @minute.to_i + minutes
    new_hour = add_calculate_new_hour(minutes)
    Clock.new(new_hour, new_minute % 60)  
  end

  def -(minutes)
    correct_minute = calculate_new_minute(minutes)
    new_hour = calculate_new_hour(minutes)
    Clock.new(new_hour, correct_minute)
  end

  def calculate_new_hour(minutes)
    original_hour = @hour.to_i
    original_minute = @minute.to_i
    minutes.times do |num|
      original_minute -= 1
      if original_minute == -1
        original_minute = 59
        original_hour -= 1
        if original_hour == -1
          original_hour = 23
        end
      end
    end
    original_hour
  end

  def add_calculate_new_hour(minutes)
    original_hour = @hour.to_i
    add_amount = minutes / 60
    add_amount.times do |num| 
      original_hour += 1
      if original_hour == 24
        original_hour = 0
      end
    end
    original_hour
  end

  def calculate_new_minute(minute)
    original_minute = @minute.to_i
    minute.times do |num|
      original_minute -= 1
        if original_minute == -1
          original_minute = 59
        end
    end
    original_minute
  end

  def ==(other)
    return true if hour == other.hour && minute == other.minute
    return false
  end
end