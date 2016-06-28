class Calculator
	attr_accessor(:result)
	
	def add(number1, number2)
		@result = number1 + number2
		@result
	end

	def subtract(number1, number2)
		@result = number1 - number2
		@result
	end

	def multiply(number1, number2)
		@result = number1 * number2
		@result
	end

	def divide(number1, number2)
		@result  = number1 / number2
		@result
	end

end