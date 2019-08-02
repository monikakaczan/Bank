# frozen_string_literal: true

class BankStatement
  def print_statement(transaction_history)
    return print_table_header
    turn_into_string(transaction_history)
  end

  def print_table_header
    'date || credit || debit || balance'
  end

  def turn_into_string(transaction_history)
    transaction_history.join("\n")
  end
end
