Rails.application.routes.draw do


	get '/users', to:'users#index'

	get '/users/new', to: 'users#new'

	post '/users', to: 'users#create'

	get '/users/:id/products', 
		to: 'products#index', as: :user_products

	get '/users/:id/products/new', 
		to: 'products#new', as: :new_user_product

	get '/users/:id/products/:id', 
		to: 'products#show', as: :user_product

	post '/users/:id/products',
		to: 'products#create', as: :create_user_product

end
