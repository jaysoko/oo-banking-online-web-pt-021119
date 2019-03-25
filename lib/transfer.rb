class Transfer
attr_accessor :sender, :receiver, :status, :amount

def initialize(sender,receiver,amount)
@sender = sender
@receiver = receiver
@status = "pending"
@amount = amount
end

def valid?
@sender.valid? and @receiver.valid?
end

def execute_transaction
@amount
end


end
