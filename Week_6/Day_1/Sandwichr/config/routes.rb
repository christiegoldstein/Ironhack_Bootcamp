Rails.application.routes.draw do
  resources :ingredients, only: [:create, :destroy, :show]
  resources :sandwiches, except: [:new, :edit]

  post "/sandwiches/:id/ingredients/add" => "sandwiches#createIngredient"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
