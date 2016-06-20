class ChessGame
	attr_accessor(:pieces_arr)
	def initialize 
		@pieces_arr = [nil,[],[],[],[],[],[],[],[]]
	end

	def add_piece(piece)
		x_pos = piece.x
		y_pos = piece.y
		#puts piece.x
		#puts piece.y
		@pieces_arr[x_pos].push(y_pos)
	end

	def moving_off(new_x, new_y)
		if(new_x =< 8 || new_x >= 1)
			true
		elsif(new_y =< 8 || new_y >= 1)
			true
		else
			false
		end
	end
end