class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template # <------------ this template is referencing the getter for instance var @template
  end
end

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template # <---------- this template is referencing the getter for instance var @template but self is not necessary
  end
end