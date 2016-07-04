class TextInspectionsController < ApplicationController
	def new 
		render 'new'
	end

 #  	def create
 #   		render plain: "This route is text_inspections#create."
 #  	end

  	def create
   		# ***** New *****
    	@text = params[:text_inspection][:user_text]

    	# ***** New *****
   		@word_count = @text.split(" ").length

   		@words_per_min = (@word_count / 275).ceil

   		render 'result'
 	end

end
