Rails.application.routes.draw do
	get '/', to: 'site#home'

	get '/contact', to: 'site#contact' 

	#Project Routes

	get '/projects', to: 'projects#index'

	get '/projects/new', to: 'projects#new'

	get '/projects/:id', to: 'projects#show'

	post '/projects', to: 'projects#create'

	#Time entries routes

	get '/projects/:project_id/time_entries', to: 'time_entries#index'

	get '/projects/:project_id/time_entries/new', to: 'time_entries#new'

	get '/projects/:project_id/time_entries/:id/edit', to: 'time_entries#edit'

	post '/projects/:project_id/time_entries',
		to: 'time_entries#create', as: :project_time_entries

	patch '/projects/:project_id/time_entries/:id', to: 'time_entries#update', as: "project_time_entry"

	delete 'projects/:project_id/time_entries/:id', to: 'time_entries#destroy'


end
