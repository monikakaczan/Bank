class BankAccount

  attr_reader :statement

  def initialize
    @statement= 0
  end

  def add_deposit(amount)
    return @statement + amount
  end

end
