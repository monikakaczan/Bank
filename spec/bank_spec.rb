require 'bank'

describe BankAccount do
  it "prints account statement" do
    bank_account = BankAccount.new
    expect(bank_account.show_statement).to eq 0
  end
end
