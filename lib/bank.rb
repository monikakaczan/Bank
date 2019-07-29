require 'date'
class BankAccount

  attr_reader :statement, :date_of_deposit, :date_of_withdrawal

  def initialize
    @statement= 0
  end

  def add_deposit(amount)
    @date_of_deposit=Date.today.to_s

    @statement += amount

  end

  def deduct_from_statement(amount)
    @date_of_withdrawal=Date.today.to_s

    @statement -= amount
  end

end
