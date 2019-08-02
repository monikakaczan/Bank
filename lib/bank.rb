# frozen_string_literal: true

require 'date'
require_relative 'bankstatement'

class BankAccount
  attr_reader :statement, :date

  def initialize(bankstatement = BankStatement.new)
    @statement = 0
    @bankstatement = bankstatement
    @transaction_history = []
    @date = Date.today.to_s
  end

  def add_deposit(credit)
    @credit = credit
    @statement += credit
    single_transaction = "#{@date}||#{@credit}.00|| || #{@statement}.00"
    @transaction_history.push(single_transaction)
    @statement
  end

  def deduct_from_statement(debit)
    @debit = debit
    @statement -= debit
    single_transaction = "#{@date} || || #{@debit}.00 || #{@statement}.00"
    @transaction_history.push(single_transaction)
    @statement
  end

  def print_bank_statement
    @bankstatement.print_statement(@transaction_history)
  end
end
