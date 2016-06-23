# spec/post_spec.rb
require_relative("../lib/post.rb")

RSpec.describe Post do
  before(:each) do
    @post1 = Post.new("First", Time.new(2016, 4, 9), "First text")
    @post2 = Post.new("Second", Time.new(2016, 4, 9), "Second text")
    @post3 = Post.new("Third", Time.new(2016, 4, 9), "Third text")
  end

  it("#title returns title") do
    expect(@post1.title).to eq("First")
    expect(@post2.title).to eq("Second")
    expect(@post3.title).to eq("Third")
  end

  it("#text returns text") do
    expect(@post1.text).to eq("First text")
    expect(@post2.text).to eq("Second text")
    expect(@post3.text).to eq("Third text")
  end

end
