class Total_sound
	def initialize 
		@total_sound = []
	end

	def total(sound)
		@total_sound.push(sound)
	end

	def print_sounds
		sounds = ""

		@total_sound.each do |sound|

			sounds = sounds + sound + " "

		end
		
		puts sounds 

	end
end