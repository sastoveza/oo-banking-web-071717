class BankAccount

attr_accessor :amount, :balance, :status
attr_reader :name

	def initialize(name)
		@name = name
		@balance = 1000
		@status = "open"
		@amount = amount
	end

	def deposit(amount)
		@balance += amount
	end

	def display_balance
		"Your balance is $#{@balance}."
	end

	def balance
		@balance		
	end

	def valid? 
		if @status == "open" && @balance > 0
			true
		else 
			false
		end
	end

	def close_account
		if valid? == true
		 @status = "closed"
	 	end
 	end
end




	
