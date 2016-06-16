require_relative("game/rooms.rb")
require_relative("game/game.rb")

puts "There's a fire in the building you are in." 
puts "Your job is to espace! Find the door to the exit!"
puts "Type: N E S or W"
puts "Remember to keep moving forward and don't turn back!"


game = Game.new


room_1 = Rooms.new("N", "First Clue: The fire is just starting. There is a door to the north.")
room_2 = Rooms.new("E", "Second Clue: It's starting to get hot. Choose your exit wisEly!")
room_3 = Rooms.new("N", "Third Clue: Getting hotter. Go straight!")
room_4 = Rooms.new("W", "Fourth Clue: It's really on fire! West is where you need to go!")
room_5 = Rooms.new("N", "You're so close. Travel forward to win!")

game.add_room(room_1)
game.add_room(room_2)
game.add_room(room_3)
game.add_room(room_4)
game.add_room(room_5)

#game.print_message_1(room_1)
game.run_game
