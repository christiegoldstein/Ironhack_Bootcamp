require 'sinatra'

require_relative('lib/blog.rb')
require_relative('lib/post.rb')


blog = Blog.new
blog.add_post Post.new("First", Time.new(2016, 6, 2), "First text")
blog.add_post Post.new("Second", Time.new(2016, 5, 7), "Second text")
blog.add_post Post.new("Third", Time.new(2016, 4, 9), "Third text")

get "/" do
	@posts = blog.posts

	erb(:home)
end

get "/new_post" do
	erb(:new_post)
end 


post "/create_post" do 
	@title = params[:title]
	@text = params[:text]

	@created_post = Post.new(@title, Time.now, @text)

	blog.add_post(@created_post)
    redirect to('/')
end

get "/post_details/:index" do
	@posts = blog.posts
	@index = params[:index].to_i
	@selected_post = @posts[@index]


	erb(:post_details)
end

