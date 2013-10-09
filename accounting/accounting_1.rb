#!/usr/bin/env ruby

#####
# Specifying Access Control
#####


class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end
  
  private
  def debiit(account, amount)
    account.balance += amount
  end
  
  public
  #...
  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
end
#...
end

savings  = Account.new(100)
checking = Account.new(200)
trans    = Transaction.new(checking, savings)
trans.transfer(50)

=begin
Protected access is used when objects need to access the internal state of other objects of the same class. 
For example, we may want to allow individual Account objects to compare their cleared balances but to hide 
those balances from the rest of the world (perhaps because we present them in a different form):
=end

class Account
  attr_reader :cleared_balance # accessor method 'cleared_balance'
  protected   :cleared_balance # and make it protected. Because cleared_balance is protected, it’s available only within Account objects.
  def greater_balance_than(other)
    return @cleared_balance > other.cleared_balance
  end
end


