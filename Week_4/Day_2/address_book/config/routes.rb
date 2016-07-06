Rails.application.routes.draw do

	get "/", to: "contacts#index"

	get "/contacts/new", to: "contacts#new"

	post("/contacts"  => "contacts#create")

	get "/contacts/:id/show", to: "contacts#show"

	get "/contacts/favorite", to: "contacts#favorite"
end
