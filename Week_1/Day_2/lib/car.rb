# lib/car.rb
class Car
	def initialize()
		@list_of_cities = [] 
	end

	def make_noise
		puts "BROOOOOM"
	end

	def speed_control 
		puts "What is your current speed?"
		speed = gets.chomp
		if speed.to_i > 100
			puts "AHH you're going over 100 mph!"
		end
	end

	def travel(city)
		puts "Traveling to: #{city}"
		@list_of_cities.push(city)
		#city must be an instance variable 
	end 

  	def list_of_cities
   	    @list_of_cities
  	end
end
