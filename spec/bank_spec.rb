require 'bank'

describe BankAccount do
  it "prints current account statement" do
    bank_account = BankAccount.new
    expect(bank_account.statement).to eq 0
  end

  it "adds money to the bank account if customer deposits 1 pound" do
    bank_account = BankAccount.new
    expect(bank_account.add_deposit(1)).to eq 1
  end

  it "adds money to the bank account if customer deposits 500 pounds" do
    bank_account = BankAccount.new
    bank_account.add_deposit(1)
    bank_account.add_deposit(500)
    expect(bank_account.statement).to eq 501

  end
end
