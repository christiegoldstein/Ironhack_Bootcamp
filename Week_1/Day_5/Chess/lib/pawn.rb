#pawn.rb
class Pawn
	attr_accessor(:x, :y, :color, :name)
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move(new_x, new_y)
		if(color == "black")
			if(y == 7 && new_y - y == -2 && x == new_x)
				true
			elsif(y < 7 && new_y - y == -1 && x == new_x)
				true
			else
				false
			end
			
		elsif(color == "white")
			if(y == 2 && new_y - y == 2 && x == new_x)
				true
			elsif(y > 2 && new_y - y == 1 && x == new_x)
				true
			else
				false
			end
		end

	end
end