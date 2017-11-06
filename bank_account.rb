class BankAccount

  def initialize
    @balance = 0
    @interest_rate = 0.2
  end

  def balancer
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit(depositer)
    # inputer = 0
    # puts "How much would you like to deposit?"
    # inputer = gets.chomp.to_i
     @balance += depositer
  end

  def withdraw(withdrawer)
    @balance -= withdrawer
  end

  def gain_interest
    @balance += @balance * @interest_rate
  end


end

myaccount = BankAccount.new

puts myaccount.balancer
puts myaccount.interest_rate


puts "How much would you like to deposit?"
munch = gets.chomp.to_i
myaccount.deposit(munch)
puts "Your current balance is $#{myaccount.balancer}."

puts "How much would you like to withdraw?"
gold_digger = gets.chomp.to_i
myaccount.withdraw(gold_digger)
puts "Your current balance is $#{myaccount.balancer}."



myaccount.gain_interest

puts "Your current balance is $#{myaccount.balancer}."
