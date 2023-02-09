class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

#they are both right. Currently the word balance on line 8 is referencing the getter method #balance
# that retrieves the value associated with the instance variable @balance.

# if we placed an @ before balance on line 9, we would simply be referencing the instance variable directly