class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

# the word 'quantity' on line 11 should be referencing a setter method for the instance variable
# quantity. This is due to the assignment operator immediately following the word quantity

# however, in the current example, we have not defined a setter method for quanity. att_reader only defines
# a getter. 

# (could also simply add the @ sign to quantity which would then reference the instance var itself)