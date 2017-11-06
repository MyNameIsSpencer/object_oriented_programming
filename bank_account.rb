class BankAccount
  puts depositer = gets.chomp.to_i
  puts withdrawer = gets.chomp.to_i
  def balance
     @balance = 0
  end

  def interest_rate
    @interest_rate
  end
  def interest_rate=(rate)
    @interest_rate = rate
  end

  def deposit
    # inputer = 0
    # puts "How much would you like to deposit?"
    # inputer = gets.chomp.to_i
     @balance += depositer
  end


end

myaccount = BankAccount.new

myaccount.interest_rate = 0.005

puts myaccount.balance
puts myaccount.interest_rate
myaccount.deposit
puts myaccount.deposit
puts myaccount.balance
