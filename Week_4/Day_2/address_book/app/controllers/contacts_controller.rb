class ContactsController < ApplicationController
	def index
		@contacts_array = Contact.order("name ASC")
		render "index"
	end

	def new
		render "new"
	end

	def create
    	contact = Contact.new(
      	:name => params[:contact][:name],
      	:address => params[:contact][:address],
      	:number => params[:contact][:number],
      	:email => params[:contact][:email])

    	# Now we save the contact
   	 	contact.save

    	redirect_to  ("/")
   		
  	end
end
