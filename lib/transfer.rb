class Transfer
  attr_reader :amount, :sender, :receiver
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status ="pending"
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid? && sender.balance > amount && self.status = "pending"
      sender.balnce -= amount
      receiver.balance +=amount
      self.status == "complete"
    else
      reject_transfer
  end
  
  def reverse_transfer
      if valid? && sender.balance > amount && self.status = "complete"
      sender.balnce += amount
      receiver.balance -=amount
      self.status == "reversed"
    else
      reject_transfer
    end
  end
  
end
