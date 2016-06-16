class Rooms
	attr_accessor(:exit, :message)
	def initialize(exit, message)
		@exit = exit
		@message = message 
	end
end
