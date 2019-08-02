# frozen_string_literal: true

require 'bank'
require 'bankstatement'

describe BankAccount do
  it 'prints current account statement' do
    bank_account = BankAccount.new
    expect(bank_account.statement).to eq 0
  end

  it 'adds 1 pound to the bank account statement if customer deposits 1£' do
    bank_account = BankAccount.new
    expect(bank_account.add_deposit(1)).to eq 1
  end

  it 'adds deposit of 500 to the statement when the current statement is 1£' do
    bank_account = BankAccount.new
    bank_account.add_deposit(1)
    bank_account.add_deposit(500)
    expect(bank_account.statement).to eq 501
  end

  it 'deducts 1£ from the bank account if customer withdraws 1£' do
    bank_account = BankAccount.new
    bank_account.add_deposit(50)
    expect(bank_account.deduct_from_statement(1)).to eq 49
  end

  it "prints today's date" do
    date = Time.now
    allow(Time).to receive(:now).and_return(@date)
  end

  it "prints today's date on deposit" do
    bank_account = BankAccount.new
    bank_account.add_deposit(150)
    expect(bank_account.date).to eq(Date.today.to_s)
  end

  it "prints today's date on withdrawal" do
    bank_account = BankAccount.new
    bank_account.deduct_from_statement(20)
    expect(bank_account.date).to eq(Date.today.to_s)
  end

  it 'prints bank statement header' do
    bank_statement = double('bank_statement')

    allow(bank_statement).to receive(:print_table_header).and_return('date || credit || debit || balance')
    bank = BankAccount.new

    expect do
      bank.print_bank_statement.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  it 'prints bank statement including date, amount and balance' do
    bank_statement = double('bank_statement')

    allow(bank_statement).to receive(:turn_into_string).and_return("#{@date} || || #{@debit}.00 || #{@statement}.00")

    bank = BankAccount.new

    expect do
      bank.print_bank_statement.to output("#{@date} || || #{@debit}.00 || #{@statement}.00\n").to_stdout
    end
  end
end

describe BankStatement do
  it 'prints out a statement as a string' do
    bank_statement = BankStatement.new
    transaction_history = ['string1, string2', 'string33, string12']
    expect(bank_statement.turn_into_string(transaction_history)).to eq("string1, string2\nstring33, string12")
  end

  it 'prints out a full bank statement' do
    bank_statement = BankStatement.new
    expect do
      bank_statement.print_statement.to output("date || credit || debit || balance\n #{@date} || || #{@debit}.00 || #{@statement}.00\n").to_stdout
    end
  end

  it 'prints the header' do
    bank_statement = BankStatement.new
    expect(bank_statement.print_table_header).to eq('date || credit || debit || balance')
  end
end
