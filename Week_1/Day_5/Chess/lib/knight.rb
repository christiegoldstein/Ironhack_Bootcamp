#knight.rb

#bishop.rb

class Knight
	def initialize(x, y, color)
		@x = x
		@y = y
		@color = color
	end

	def can_move(new_x, new_y)
		
		black_y_diff = @y - new_y
		white_y_diff = new_y - @y
		puts black_y_diff
		puts white_y_diff

		if(@color.downcase == "black" && black_y_diff == 2 && (new_x == @x + 1 || new_x == @x -1))
			true
		elsif(@color.downcase == "white" && white_y_diff == 2 && (new_x == @x + 1 || new_x == @x -1))
			true
		else 
			false
		end

	end
end