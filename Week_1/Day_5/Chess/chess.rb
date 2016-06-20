#chess.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/chessgame.rb")

#game class
board = ChessGame.new

#black pieces
black_rook_left = Rook.new(1, 8, "black", "bR")
black_knight_left = Knight.new(2, 8, "black", "bN")
black_bishop_left = Bishop.new(3, 8, "black", "bB")
black_queen = Queen.new(4, 8, "black", "bQ")
black_king = King.new(5, 8, "black", "bK")
black_bishop_right = Bishop.new(6, 8, "black", "bB")
black_knight_right = Knight.new(7, 8, "black", "bN")
black_rook_right = Rook.new(8, 8, "black", "bR")
black_pawn_1 = Pawn.new(1, 7, "black", "bP")
black_pawn_2 = Pawn.new(2, 7, "black", "bP")
black_pawn_3 = Pawn.new(3, 7, "black", "bP")
black_pawn_4 = Pawn.new(4, 7, "black", "bP")
black_pawn_5 = Pawn.new(5, 7, "black", "bP")
black_pawn_6 = Pawn.new(6, 7, "black", "bP")
black_pawn_7 = Pawn.new(7, 7, "black", "bP")
black_pawn_8 = Pawn.new(8, 7, "black", "bP")


#white pieces
white_rook_left = Rook.new(1, 1, "white", "wR")
white_knight_left = Knight.new(1, 2, "white", "wN")
white_bishop_left = Bishop.new(1, 3, "white", "wB")
white_queen = Queen.new(1, 4, "white", "wQ")
white_king = King.new(1, 5, "white", "wK")
white_bishop_right = Bishop.new(1, 6, "white", "wB")
white_knight_right = Knight.new(1, 7, "white", "wN")
white_rook_right = Rook.new(1, 8, "white", "wR")
white_pawn_1 = Pawn.new(1, 2, "white", "bP")
white_pawn_2 = Pawn.new(2, 2, "white", "bP")
white_pawn_3 = Pawn.new(3, 2, "white", "bP")
white_pawn_4 = Pawn.new(4, 2, "white", "bP")
white_pawn_5 = Pawn.new(5, 2, "white", "bP")
white_pawn_6 = Pawn.new(6, 2, "white", "bP")
white_pawn_7 = Pawn.new(7, 2, "white", "bP")
white_pawn_8 = Pawn.new(8, 2, "white", "bP")

#push black pieces to ChessGame class
board.add_piece(black_rook_left)
board.add_piece(black_knight_left)
board.add_piece(black_bishop_left)
board.add_piece(black_queen)
board.add_piece(black_king)
board.add_piece(black_bishop_right)
board.add_piece(black_knight_right)
board.add_piece(black_rook_right)
board.add_piece(black_pawn_1)
board.add_piece(black_pawn_2)
board.add_piece(black_pawn_3)
board.add_piece(black_pawn_4)
board.add_piece(black_pawn_5)
board.add_piece(black_pawn_6)
board.add_piece(black_pawn_7)
board.add_piece(black_pawn_8)

#push black pieces to ChessGame class
board.add_piece(white_rook_left)
board.add_piece(white_knight_left)
board.add_piece(white_bishop_left)
board.add_piece(white_queen)
board.add_piece(white_king)
board.add_piece(white_bishop_right)
board.add_piece(white_knight_right)
board.add_piece(white_rook_right)
board.add_piece(white_pawn_1)
board.add_piece(white_pawn_2)
board.add_piece(white_pawn_3)
board.add_piece(white_pawn_4)
board.add_piece(white_pawn_5)
board.add_piece(white_pawn_6)
board.add_piece(white_pawn_7)
board.add_piece(white_pawn_8)

p board.pieces_arr



# puts "black pawn: "
# p black_pawn.can_move(4,5) == true
# p black_pawn_2.can_move(4,5)== true
# p black_pawn_2.can_move(4,4) == false
# puts "white pawn: "
# p white_pawn.can_move(3,4) == true
# p white_pawn_2.can_move(4,4) == true
# p white_pawn_2.can_move(4,5) == false


#p black_rook_right.can_move(4,8) == true
#p black_rook_right.can_move(3,4) == false
#p king.can_move(7,3) == true
#p king.can_move(8,6) == true
#p king.can_move(7,6) == true
# p "white bishop"
# p white_bishop.can_move(6,4) == true
# p white_bishop.can_move(1,3) == true
# p white_bishop.can_move(5,4) == false
# p "black bishop"
# p black_bishop.can_move(6,5) == true
# p black_bishop.can_move(2,7) == true
# p black_bishop.can_move(5,4) == false
# p "black knight"
# p black_knight.can_move(1,6) == true
# p black_knight.can_move(3,6) == true
# p black_knight.can_move(4,6) == false
# p black_knight.can_move(1,5) == false
# p "white knight"
# p white_knight.can_move(1,3) == true
# p white_knight.can_move(3,3) == true
# p white_knight.can_move(3,4) == false
# p white_knight.can_move(1,4) == false

# puts "black queen: "
# p black_queen.can_move(4,2) == true
# p black_queen.can_move(1,8) == true
# p black_queen.can_move(6,6) == true 
# p black_queen.can_move(6,7) == false
# puts "white queen: "
# p white_queen.can_move(4,6) == true
# p white_queen.can_move(8,1) == true
# p white_queen.can_move(3,2) == true 
# p white_queen.can_move(5,3) == false




