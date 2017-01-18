class BankAccount
  attr_accessor :balance
  attr_accessor :interest_rate

  def initialize (balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

#Deposits
  def deposits
    puts "What is the amount of deposit?"
    deposit_amount =gets.chomp.to_i
    @balance = balance + deposit_amount
  end

#Withdraw
  def withdraw
    puts "What is the amount of withdraw?"
    withdraw_amount =gets.chomp.to_i
    @balance = balance - withdraw_amount
  end

#interest_gain
  def gain_interest
    @balance=balance * (1 + interest_rate)
  end

end
