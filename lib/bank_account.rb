class BankAccount
  attr_reader :name
  
  def initialize(name)
    @name=name
    @balance = 1000
    status = 'open'
  end
  
  def deposit
    self << deposit
  end
  
  def display_balance
    display_balance
  end
  
  def valid
    if status = 'open' && balance > log10
      valid
    end
  end
  
  def close_account
    self << close
  end
  
end
