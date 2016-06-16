class Game
	#attr_accessor("")
	def initialize()
		@rooms_arr = []
		@inventory = []
		@position = 0
	end

	def add_room(room)
		@rooms_arr.push(room)
	end 

	def run_game

		puts @rooms_arr[@position].message
		puts ">"
		input = gets.chomp

		if input == @rooms_arr[@position].exit
			@position += 1

			if @position == 3
				@inventory.push("Fire Extinguisher")
				puts("You found a Fire Extinguisher! Help to put out the fire.")
			end

			if @position == 4
				@inventory.push("Hose")
				puts("You found a Hose! Help to put out the fire.")
			end


			if @position == @rooms_arr.length
				puts "You have escaped! You WIN!!!"
				p @inventory
			else	
				run_game
			end

		else
			puts "Ah! There is no exit!"
			run_game
		end

		if(input == "exit")
			break
		end

	end

end