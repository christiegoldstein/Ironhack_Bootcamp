class Rook
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move(new_x, new_y)
		if(@x == new_x || @y == new_y)
			true
		else 
			false
		end

	end
end