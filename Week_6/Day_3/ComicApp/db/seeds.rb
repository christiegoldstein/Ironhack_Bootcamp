# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


christie = User.create!(name: "Christie Goldstein", email: "christie@aol.com", password: "hello!", password_confirmation: "hello!")

christie.comics.create!(title: "Ruby World", publisher: "Nizar")