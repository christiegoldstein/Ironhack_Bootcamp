class UsersController < ApplicationController

	def index
		@users_array = User.order("name ASC")
		render 'index'
	end

	def create
		@my_user = User.new(
			:name =>  params[:user][:name],
			:email => params[:user][:email])
		@my_user.save

		redirect_to '/users'
	end

	def new
		@my_user = User.new
		render 'new'
	end

end
