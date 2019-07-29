class BankAccount

  attr_reader :statement

  def initialize
    @statement= 0
  end

  def add_deposit(amount)
     @statement += amount
  end

  def deduct_from_statement(amount)
    @statement -= amount
  end 

end
