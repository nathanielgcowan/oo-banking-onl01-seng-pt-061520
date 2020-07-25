class Transfer
  attr_reader :amount, :sender, :receiver
  attr_accessor :balance, :status
  
  def initialize(transfer_amount)
    @sender = sender
    @receiver = receiver
    @status ="pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    self.status = "closed"
  end
  
  def reverse_transfer
    
  end
  
end
