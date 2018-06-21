require './lib/bank_account.rb'

describe Bank_Account do

  it "has a balance" do
    expect(subject.balance).to eq(0)
  end

  it "can store transactions" do
    expect(subject.transactions).to eq([])
  end

  describe ".deposit" do

    it "adds money to the bank account at a specified date" do
      subject.deposit(10, "12/12/2012")
      expect(subject.balance).to eq(10)
    end

    it "adds the deposit as a transaction" do
      subject.deposit(10, "12/12/2012")
      expect(subject.transactions).to eq([["12/12/2012", 10]])
    end

  end

  describe ".withdraw" do

    it "subtracts money from the bank account" do
      subject.withdraw(10, "12/12/2012")
      expect(subject.balance).to eq(-10)
    end

    it "adds the withdrawal as a transaction" do
      subject.withdraw(10, "12/12/2012")
      expect(subject.transactions).to eq([["12/12/2012", -10]])
    end

  end

end
