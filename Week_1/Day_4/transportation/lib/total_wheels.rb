class Total_wheels
	def initialize 
		@total_wheels = []
	end

	def total(wheels)
		@total_wheels.push(wheels)
	end

	def print_wheels
		total = 0 
		@total_wheels.each do |wheels|
			total = total + wheels
		end

		puts total
	end
end