class TextInspectionsController < ApplicationController
	def new 
		render 'new'
	end

	# ***** New *****
  	def create
   		render plain: "This route is text_inspections#create."
  	end
end
