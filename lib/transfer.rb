class Transfer

attr_accessor :sender, :receiver, :amount
attr_reader :status

	def initialize(sender, receiver, amount)
		@sender = sender
		@receiver = receiver
		@status = "pending"
		@amount = amount
	end

	def valid? 
		if sender.valid? == true && receiver.valid? == true
			true
		end
	end

	def execute_transaction
		if valid? == true && status != "complete" && sender.balance > amount
			sender.deposit(-amount)
			receiver.deposit(amount)
			@status = "complete"

		else 
			@status = "rejected"
				"Transaction rejected. Please check your account balance."
		end
	end

	def reverse_transfer
		if status == "complete" 
			sender.deposit(amount)
			receiver.deposit(-amount)
			@status = "reversed"
		end
	end

end
