class Rook
	attr_accessor(:x, :y, :color, :name)
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move(new_x, new_y)
		if(x == new_x || y == new_y)
			true
		else 
			false
		end

	end
end