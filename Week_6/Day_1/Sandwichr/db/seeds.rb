# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
christie = User.create!(name: "Christie", email: "christie@aol.com", password: "hello1", password_confirmation: "hello1")

sandwichA = Sandwich.create(name: "Bacon Egg & Cheese", bread_type: "Bagel")
sandwichB = Sandwich.create(name: "Meatball Sub", bread_type: "Italian")
sandwichC = Sandwich.create(name: "Chicken Sub", bread_type: "Wheat")

ingredientA = Ingredient.create(name: "Egg", calories: 100)
ingredientB = Ingredient.create(name: "Bacon", calories: 130)
ingredientC = Ingredient.create(name: "Meatballs", calories: 150)
ingredientD = Ingredient.create(name: "Chicken", calories: 120)

sandwich_ingredientA = SandwichIngredient.create(sandwich_id: sandwichA.id, ingredient_id: ingredientA.id)
sandwich_ingredientB = SandwichIngredient.create(sandwich_id: sandwichA.id, ingredient_id: ingredientB.id)
sandwich_ingredientC = SandwichIngredient.create(sandwich_id: sandwichB.id, ingredient_id: ingredientC.id)
sandwich_ingredientD = SandwichIngredient.create(sandwich_id: sandwichC.id, ingredient_id: ingredientD.id)




puts("DONE!")