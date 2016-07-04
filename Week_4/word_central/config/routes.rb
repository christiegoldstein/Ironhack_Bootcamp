Rails.application.routes.draw do
	get '/', to: 'site#home'

	get "/text_inspections/new", to: 'text_inspections#new'
end
