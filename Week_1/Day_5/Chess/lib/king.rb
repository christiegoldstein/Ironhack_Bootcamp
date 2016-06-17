#king.rb
class King
	attr_accessor(:x, :y, :color, :name)
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move(new_x, new_y)
		if x + 2 == new_x || y + 2 == new_y
			false
		elsif x - 2 == new_x || y - 2 == new_y
			false
		else
			true
		end

	end
end