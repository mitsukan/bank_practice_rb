require './lib/bank_account.rb'

describe Bank_Account do

  it "has a balance" do
    expect(subject.balance).to eq(0)
  end

  describe ".deposit" do

    it "adds money to the bank account" do
      subject.deposit(10)
      expect(subject.balance).to eq(10)
    end

  end

end
