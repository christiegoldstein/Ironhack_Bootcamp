# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



projectA = Project.create(name: 'Ironhack', description: 'Ironhack is a coding school')
projectB = Project.create(name: 'Pape Johns', description: 'Decent chain for pizza')
projectC = Project.create(name: 'Taco Bell')
projectD = Project.create(name: 'Dominos', description: 'I like their breadsticks')
projectE = Project.create(name: 'Meal Pass', description: 'Great way to get lunch around Miami')
projectF = Project.create(name: 'Blue Tree', description: 'Has a refreshing acai bowl')
projectG = Project.create(name: 'Japango', description: 'I want their tuna tartar roll for dinner')
projectH = Project.create(name: 'Shula Burger', description: 'Had a burger from there last night')
projectI = Project.create(name: 'Freshmarket')
projectJ = Project.create(name: 'Toasted')

puts 'done'