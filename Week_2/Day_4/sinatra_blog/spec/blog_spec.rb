require_relative("../lib/blog.rb")
require_relative("../lib/post.rb")

RSpec.describe Blog do
  before(:each) do
    @blog = Blog.new
  end

  # it "#posts returns a list of posts" do
  #   @blog.add_post Post.new("First", Time.new(2016, 5, 2), "First text")
  #   @blog.add_post Post.new("Second", Time.new(2016, 5, 7), "Second text")
  #   @blog.add_post Post.new("Third", Time.new(2016, 4, 9), "Third text")
  #   expect(@blog.posts.length).to eq(3)
  # end

   it "#latest_date returns a list of posts in which latest post is first" do
    @blog.add_post Post.new("First", Time.new(2016, 6, 2), "First text")
    @blog.add_post Post.new("Second", Time.new(2016, 5, 7), "Second text")
    @blog.add_post Post.new("Third", Time.new(2016, 4, 9), "Third text")
    expect(@blog.latest_date[0].title).to eq("First")
  end

end