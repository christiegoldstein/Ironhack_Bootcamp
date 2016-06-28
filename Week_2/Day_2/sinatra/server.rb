#server.rb

require "sinatra"
require "sinatra/reloader"
require "pry"

enable(:sessions)

get "/" do
	erb(:home)
end

get "/sessions_test" do
	@current_session = sesssion
	erb(:display_the_session)
end

get "/sessions_test/:value" do
	new_value = params[:value]
	session[:new_session_value] = new_value
	redirect to("/sessions_test")
end

get "/hi" do
	@name = "Christie"

	erb(:hi_page)
end

get "/about" do
	erb(:about)
end

get "/recipe" do
	@name = "Red Velvet Cake"
	@ingredients = [
		"eggs",
		"flour",
		"red food coloring",
		"buttermilk",
		"sugar",
		"cream cheese",
		"cocoa",
		"LOVE<3"
	]

	erb(:recipe_page)
end

get "/users/:username" do
	@username = params[:username]
	erb(:user_profile)

	if @username == "jalexy12" || @username == "josh"
		erb(:whiskey_time)
	else
		erb(:user_profile)
		binding.pry
	end
end