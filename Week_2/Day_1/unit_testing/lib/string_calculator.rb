class StringCalculator
	def add(numbers_string)
		numbers_arr = numbers_string.split(/[\s,&]/)
	
		#p numbers_arr
		sum = 0 
		numbers_arr.each do |number|
			sum = sum + number.to_i
		end

		sum 
	end
end