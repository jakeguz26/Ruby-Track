# Modify this class so both flip_switch and the setter method switch= are private methods.

class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  private

  attr_writer :switch

  def flip_switch(desired_state) #needs to be private
    self.switch = desired_state
  end
end

computer = Machine.new