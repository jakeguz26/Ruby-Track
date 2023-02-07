class Pizza
  def initialize(name)
    @name = name
  end
end

yummy = Pizza.new("pepperoni")

# the deault eturn valueof #to_s on an object is to print the object itself
# ==========> The name of the object's class and en encoding of the object id