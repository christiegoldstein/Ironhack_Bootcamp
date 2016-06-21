#server.rb

require "sinatra"

get "/" do
	"My first Sinatra app."
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
	end
end