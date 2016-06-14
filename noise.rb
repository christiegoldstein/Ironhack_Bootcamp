require_relative("Week_1/car.rb")

toyota = Car.new

toyota.make_noise

toyota.speed_control

toyota.travel("Austin")
toyota.travel("Arizona")
toyota.travel("Malibu")
toyota.travel("San Diego")

p toyota.list_of_cities