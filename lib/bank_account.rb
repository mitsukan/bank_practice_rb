class Bank_Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    @balance += amount
  end

  def withdraw(amount, date)
    @balance -= amount
  end

end
