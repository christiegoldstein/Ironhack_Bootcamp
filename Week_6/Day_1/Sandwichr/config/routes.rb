Rails.application.routes.draw do

  devise_for :users
  	get "/users/:id" => "sandwich_views#index"
  	scope "/users/:id" do 
  		resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
  	end
	
  	scope "/api" do
    	resources :ingredients, only: [:create, :destroy, :show]
  		resources :sandwiches, except: [:new, :edit]
    	post "/sandwiches/:sandwich_id/ingredients/add" => "sandwiches#add_ingredient"
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
