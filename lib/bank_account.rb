class BankAccount
  attr_reader :name
  attr_accessible :balance, :status
  
  def initialize(name)
    @name=name
    @balance = 1000
    status = "open"
  end
  
  
end
