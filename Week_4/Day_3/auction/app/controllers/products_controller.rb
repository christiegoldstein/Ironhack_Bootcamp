class ProductsController < ApplicationController

	def index
		@products_array = Product.order("title ASC")
		@user = User.find(params[:id])
		render 'index'
	end

	def show
		@my_product = Product.find(params[:id])

		unless @my_product
			render 'no_projects_found'
		end

		render 'show'
	end

	def new
		@my_user = User.find(params[:id])
		@my_product = Product.new
		render 'new'
	end

	def create
		@my_product = Product.new(
			:title =>  params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline],
			:user_id => params[:id])
		@my_product.save

		redirect_to user_products_path
	end

end
