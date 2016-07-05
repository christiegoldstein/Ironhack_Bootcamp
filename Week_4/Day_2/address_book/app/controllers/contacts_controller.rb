class ContactsController < ApplicationController
	def index
		@contacts_array = Contact.all
		render 'index'
	end
end
