class BankAccount
  def balance
    @balance
  end
  def balance=(number)
     @balance = number
  end

  def interest_rate
    @interest_rate
  end
  def interest_rate=(rate)
    @interest_rate = rate
  end

  def deposit
    @deposit
  end
  def deposit
    @deposit = gets.chomp
  end
end

myaccount = BankAccount.new
myaccount.balance = 50
myaccount.interest_rate = 0.005
myaccount.deposit = 5000
puts myaccount.balance
puts myaccount.interest_rate
puts myaccount.deposit
