class SandwichesController < ApplicationController
	def index
		@user = User.find(params[:id])
		sandwiches = Sandwich.all 
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json:{error: "sandwich not found"}, status: 404
			return
		end
		ingredients = sandwich.ingredients.all
		ingredientsobj = {}
		ingredientsobj["ingredients"] = ingredients
		ingredientsobj["sandwich"] = sandwich
		render json: ingredientsobj
	end

	def update 
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json:{error: "sandwich not found"}, status: 404
			return
		end
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json:{error: "sandwich not found"}, status: 404
			return
		end
		sandwich.destroy
		head :no_content
	end

	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:sandwich_id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		if ingredient != nil
			sandwich.ingredients.push(ingredient)
		end
		render json: ingredient
	end

	private
	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end
end
