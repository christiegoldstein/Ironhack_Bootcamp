#queen.rb

class Queen
	attr_accessor(:x, :y, :color, :name)
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move(new_x, new_y)
		
		difference_x = x - new_x
		difference_y = y - new_y

		if  new_x == x || new_y == y
			true
		elsif difference_x.abs == difference_y.abs
			true
		else 
			false
		end

	end
end