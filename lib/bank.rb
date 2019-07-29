require 'date'
class BankAccount

  attr_reader :statement, :date_of_deposit

  def initialize
    @statement= 0
  end

  def add_deposit(amount)
    @date_of_deposit=Date.today.to_s

    @statement += amount

  end

  def deduct_from_statement(amount)

    @statement -= amount
  end

end
