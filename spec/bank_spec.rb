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

  it "adds deposit of 500 to the statement when the current statement is 1 pound" do
    bank_account = BankAccount.new
    bank_account.add_deposit(1)
    bank_account.add_deposit(500)
    expect(bank_account.statement).to eq 501
  end

  it "deducts 1 pound from the bank account if customer withdraws 1 pound" do
    bank_account = BankAccount.new
    bank_account.add_deposit(50)
    expect(bank_account.deduct_from_statement(1)).to eq 49
  end

  it "prints today's date" do
    date=Time.now
    allow(Time).to receive(:now).and_return(@date)
  end


end
