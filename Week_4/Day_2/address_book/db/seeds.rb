# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


contact1 = Contact.create(name: "Christie", address: "17 Oak Lane", number: "(561)555-5555", email: "cg1827@gmail.com")
contact2 = Contact.create(name: "John", address: "12 SW 10th Street", number: "(305)383-3839", email: "john9203@yahoo.com")
contact3 = Contact.create(name: "Andres", address: "822 Rose Road", number: "(305)239-2398", email: "andres19012@gmail.com")
contact4 = Contact.create(name: "Nizar", address: "120 Ally Ave", number: "(273)287-9394", email: "nizar_rocks@gmail.com")
contact5 = Contact.create(name: "JoJo", address: "292 Park Ave", number: "(182)829-2232", email: "jojojuggles@hotmail.com")
contact6 = Contact.create(name: "Nick", address: "28 Orchid Way", number: "(223)223-2233", email: "nickatnight@gmail.com")
contact7 = Contact.create(name: "Rachel", address: "181 Rock Lane", number: "(272)556-5678", email: "rachelrules@yahoo.com")

puts "done"