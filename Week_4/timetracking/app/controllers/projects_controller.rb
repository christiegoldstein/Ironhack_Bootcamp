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
end
