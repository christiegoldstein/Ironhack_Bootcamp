class ProjectsController < ApplicationController
	def index
		@projects_array = Project.order(created_at: "desc")
								 .limit(10)
		render 'index'
	end

	def show

		@project = Project.find(params[:id])

		unless @project
			render 'no_projects_found'
		end

		render 'show'
	end

	def new
		@my_project = Project.new
		render 'new'
	end

	def create
		@my_project = Project.new(
			:name =>  params[:project][:name],
			:description => params[:project][:description])
		@my_project.save

		redirect_to "/projects"
	end
end
