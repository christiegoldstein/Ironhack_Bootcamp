#knight.rb

class Knight
	attr_accessor(:x, :y, :color, :name)
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move(new_x, new_y)
		
		black_y_diff = y - new_y
		white_y_diff = new_y - y

		if(color.downcase == "black" && black_y_diff == 2 && (new_x == x + 1 || new_x == x - 1))
			true
		elsif(color.downcase == "white" && white_y_diff == 2 && (new_x == x + 1 || new_x == x - 1))
			true
		else 
			false
		end

	end
end