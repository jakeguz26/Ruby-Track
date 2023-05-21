require 'date'

class Meetup
  attr_reader :date

  KEY = {'first' => 1, "second" => 2, 'third' => 3, 'fourth' => 4, 'fifth' => 5}
  INT_DAYS = (1..31).to_a

  def initialize(year, month)
    @year = year
    @month = month
    @day_int = 1
  end

  def day(day, schedule)
    @day_string = day.downcase
    @schedule = schedule.downcase
    @correct_method = build_procs
    case @schedule
      when 'last'
        return find_last_day
      when 'teenth'
        return find_teenth_day
      else
        return find_day
    end
  end

  def build_procs # <--- will return a proc with the correct method 
    case @day_string
    when 'monday'
      return monday = Proc.new { |day| day.monday? }
    when 'tuesday'
      return tuesday = Proc.new { |day| day.tuesday? }
    when 'wednesday'
      return wedneday = Proc.new { |day| day.wednesday? }
    when 'thursday'
      return thursday = Proc.new { |day| day.thursday? }
    when 'friday'
      return friday = Proc.new { |day| day.friday? }
    when 'saturday'
      return saturday = Proc.new { |day| day.saturday? }
    when 'sunday'
      return sunday = Proc.new { |day| day.sunday? }
    end
  end

  def find_day
    target = KEY[@schedule]
    INT_DAYS.each do |num|
      begin
        @date = Date.new(@year, @month, num)
      rescue
        return nil
      else
        if @correct_method.call(@date) == true && target == @day_int
          return @date
        elsif  @correct_method.call(@date) == true
          @day_int += 1
        end
      end
    end
    return nil
  end

  def find_last_day
    days_reverse = INT_DAYS.reverse
    days_reverse.each do |num|
      begin
      @date = Date.new(@year, @month, num)
      rescue
      else
        if @correct_method.call(@date) == true
          return @date
        end
      end
    end
  end

  def find_teenth_day
    days_teenth = (13..19).to_a
    days_teenth.each do |num|
      @date = Date.new(@year, @month, num)
      if @correct_method.call(@date) == true
        return @date
      end
    end
  end
end