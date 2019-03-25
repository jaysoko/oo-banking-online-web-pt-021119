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
if @status == "pending" && @sender.valid?
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
else
    "JAYBIRD"
end
end

end
