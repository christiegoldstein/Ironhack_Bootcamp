#bishop.rb

class Bishop
	attr_accessor(:x, :y, :color, :name)
	def initialize(x, y, color, name)
		@x = x
		@y = y
		@color = color
		@name = name
	end

	def can_move(new_x, new_y)
		number_of_moves = new_x - x	

		if(@color.downcase == "black" && (x + number_of_moves.abs == new_x && y - number_of_moves.abs == new_y))
			true
		elsif(@color.downcase == "black" && (x - number_of_moves.abs == new_x && y - number_of_moves.abs == new_y))
			true
		elsif(@color.downcase == "white" && (x + number_of_moves.abs == new_x && y + number_of_moves.abs == new_y))
			true
		elsif(@color.downcase == "white" && (x - number_of_moves.abs == new_x && y + number_of_moves.abs == new_y))
			true
		else 
			false
		end

	end
end