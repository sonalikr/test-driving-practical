class Account
  
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    "deposited!"
  end

  def withdraw(amount)
    if @balance > amount
      @balance -= amount
      amount
    else
      raise "insufficient balance!"
    end
  end

  def print_balance
    @balance
  end

end