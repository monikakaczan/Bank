require 'bank'

describe BankAccount do
  it "prints current account statement" do
    bank_account = BankAccount.new
    expect(bank_account.statement).to eq 0
  end

  it "adds 1 pound to the bank account statement if customer deposits 1 pound" do
    bank_account = BankAccount.new
    expect(bank_account.add_deposit(1)).to eq 1
  end

  it "adds 500 pounds to the bank account if customer deposits 500 pounds" do
    bank_account = BankAccount.new
    bank_account.add_deposit(1)
    bank_account.add_deposit(500)
    expect(bank_account.statement).to eq 501
  end

  it "deduct 1 pound from the bank account if customer withdraws 1 pound" do
    bank_account = BankAccount.new
    bank_account.add_deposit(50)
    expect(bank_account.deduct_from_statement(1)).to eq 49
  end
end
