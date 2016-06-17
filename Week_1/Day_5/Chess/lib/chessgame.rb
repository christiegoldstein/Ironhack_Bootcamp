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

end