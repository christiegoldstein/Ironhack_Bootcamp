require_relative("lib/airplane.rb")
require_relative("lib/boat.rb")
require_relative("lib/car.rb")
require_relative("lib/motorcycle.rb")
require_relative("lib/total_wheels.rb")
require_relative("lib/total_sound.rb")

airplane = Airplane.new
boat = Boat.new
car = Car.new
motorcycle = Motorcycle.new
total_wheels = Total_wheels.new
total_sound = Total_sound.new

total_wheels.total(airplane.number_of_wheels)
total_wheels.total(boat.number_of_wheels)
total_wheels.total(car.number_of_wheels)
total_wheels.total(motorcycle.number_of_wheels)

total_sound.total(airplane.make_sound)
total_sound.total(boat.make_sound)
total_sound.total(car.make_sound)
total_sound.total(motorcycle.make_sound)

total_wheels.print_wheels
total_sound.print_sounds