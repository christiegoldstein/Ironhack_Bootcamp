Rails.application.routes.draw do

	get '/', to: 'site#home'

	get '/contact', to: 'site#contact' 


	resources :projects, only: [:index, :show, :new, :create] do
		resources :time_entries, except: [:show]
	end

end
