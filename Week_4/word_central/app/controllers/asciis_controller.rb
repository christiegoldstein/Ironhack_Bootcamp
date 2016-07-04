class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
   	# ***** New ****

	  	@text = params[:ascii][:user_text]


	  	ascifier = Artii::Base.new(:font => "cosmic")

		@ascii_word = ascifier.asciify(@text)

	   	render 'result'

 	end
end
