# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



projectA = Project.create(name: 'Ironhack', description: 'Ironhack is a coding school')
projectB = Project.create(name: 'Papa Johns', description: 'Decent chain for pizza')
projectC = Project.create(name: 'Taco Bell')
projectD = Project.create(name: 'Dominos', description: 'I like their breadsticks')
projectE = Project.create(name: 'Meal Pass', description: 'Great way to get lunch around Miami')
projectF = Project.create(name: 'Blue Tree', description: 'Has a refreshing acai bowl')
projectG = Project.create(name: 'Japango', description: 'I want their tuna tartar roll for dinner')
projectH = Project.create(name: 'Shula Burger', description: 'Had a burger from there last night')
projectI = Project.create(name: 'Freshmarket')
projectJ = Project.create(name: 'Toasted')

TimeEntry.create(hours: 9, minutes: 30, comments: "Started learning Ruby on Rails", date: Time.now - 3.days, project_id: projectA.id)
TimeEntry.create(hours: 1, minutes: 2, comments: "Order in here last week", date: Time.now - 7.days, project_id: projectB.id)
TimeEntry.create(hours: 0, minutes: 10, comments: "Drove past here on the way home", date: Time.now - 2.days, project_id: projectC.id)
TimeEntry.create(hours: 2, minutes: 10, comments: "Took an hour to bring the pizza so we got it for free", date: Time.now - 10.days, project_id: projectD.id)
TimeEntry.create(hours: 0, minutes: 20, comments: "Spent a while tring to figure out what I wanted to eat for lunch today", date: Time.now - 15.hours, project_id: projectE.id)
TimeEntry.create(hours: 1, minutes: 2, comments: "Walked and ate here last week", date: Time.now - 9.days, project_id: projectF.id)
TimeEntry.create(hours: 1, minutes: 4, comments: "Debated ordering in from here last night", date: Time.now - 14.hours, project_id: projectG.id)
TimeEntry.create(hours: 1, minutes: 1, comments: "Order in from here the other night", date: Time.now - 2.days, project_id: projectH.id)
TimeEntry.create(hours: 0, minutes: 20, comments: "Drove to pick up a Tuna Bowl", date: Time.now - 18.days, project_id: projectI.id)
TimeEntry.create(hours: 1, minutes: 15, comments: "Ate lunch here with a friend from high school", date: Time.now - 15.days, project_id: projectJ.id)

puts 'done'