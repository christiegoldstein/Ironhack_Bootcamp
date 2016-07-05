Rails.application.routes.draw do
	get '/', to: 'site#home'

	get '/contact', to: 'site#contact' 

	get '/project', to: 'projects#index'
end
