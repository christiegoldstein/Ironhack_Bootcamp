#bishop.rb

class Bishop
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move(new_x, new_y)
		number_of_moves = new_x - @x	
		if(number_of_moves < 0)
			number_of_moves = new_y - @y
		end	

		if(@color.downcase == "black" || (@x + number_of_moves == new_x && @y - number_of_moves == new_y))
			true
		elsif(@color.downcase == "black" || (@x - number_of_moves == new_x && @y + number_of_moves == new_y))
			true
		elsif(@color.downcase == "white" || (@x + number_of_moves == new_x && @y + number_of_moves == new_y))
			true
		elsif(@color.downcase == "white" || (@x - number_of_moves == new_x && @y + number_of_moves == new_y))
			true
		else 
			false
		end

	end
end