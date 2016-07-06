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

      	number_check(:number)

    	# Now we save the contact
    	if :name != nil && :address != nil && :number != nil  && :email != nil && number_check(:number) 
   	 		contact.save
   	 	end

    	redirect_to  ("/")
   		
  	end

  	def number_check(number)
  		phone = number.split("")
  		int_arr = []
  		if(phone[0] == "(" && phone[4] == ")" && phone[8]== "-")
  			phone.join("")
  			phone.split(/[()-]/)
  			phone.each do |number|
  				if number.to_i.is_a?(Integer)
  					int_arr.push(number.to_i)
  				end
  			end

  			if int_arr.length == 7
  				true
  			else
  				false
  			end
  		else
  			false
  		end

  	end 

  	def show
  		@id = params[:id]
  		@contact = Contact.find(@id)
  		render "show"
  	end

end
