require_relative("lib/blog.rb")
require_relative("lib/post.rb")

blog = Blog.new

dogs = Post.new("Dogs",Time.new(2016, 5, 2),"I have two dogs named Charlie and Joey.")
sisters = Post.new("Sisters",Time.new(2016, 5, 7),"I have two sisters named Samantha and Emily.")
parents = Post.new("Parents",Time.new(2016, 4, 9),"My mom's name is Susie and my dad's name is Scott.")
school = Post.new("College", Time.new(2016, 3, 22),"I go to the University of Florida. Go Gators!")
sport = Post.new("Sport",Time.new(2016, 2, 13),"I like to dance.")
major = Post.new("Major",Time.new(2016, 3, 13),"My major is Computer Science.")
hobbies = Post.new("Hobbies",Time.new(2016, 4, 17),"I love listening to music.")
ironhack = Post.new("IronHack",Time.new(2016, 6, 1),"Yesterday, I started my coding bootcamp at IronHack Miami.")

blog.add_post(dogs)
blog.add_post(sisters)
blog.add_post(parents)
blog.add_post(school)
blog.add_post(sport)
blog.add_post(major)
blog.add_post(hobbies)
blog.add_post(ironhack)

blog.publish_front_page