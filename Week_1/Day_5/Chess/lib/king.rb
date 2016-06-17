#king.rb
class King
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move(new_x, new_y)
		if @x + 2 == new_x || @y + 2 == new_y
			false
		elsif @x - 2 == new_x || @y - 2 == new_y
			false
		else
			true
		end

	end
end