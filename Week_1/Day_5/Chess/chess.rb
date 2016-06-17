#chess.rb

require_relative("lib/rook.rb")

black_rook_right = Rook.new(8, 8, "black")
p black_rook_right.can_move(4,8) == true
p black_rook_right.can_move(3,4) == false
