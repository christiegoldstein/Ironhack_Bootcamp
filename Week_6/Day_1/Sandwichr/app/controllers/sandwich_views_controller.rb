class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
		@user = User.find(params[:id]) 
	end

	def show 
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = Ingredient.all
	end 
end
