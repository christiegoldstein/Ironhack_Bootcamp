
class Blog
	def initialize
		@blog_posts = []
	end

	def add_post(post)
		@blog_posts.push(post)
	end 

	def publish_front_page
		sorted_by_date = @blog_posts.sort_by {|post| post.date}

		counter = 0

		sorted_by_date.each do |post|
			counter = counter + 1
			if counter == 2 
				puts "*******#{post.title}*********"
			else
				puts post.title
			end
			puts "***************"
			puts post.text
			puts "---------------"
		end

		page_num = (counter%3)+1
		new_counter = 0 
		page_numbers = []
		while new_counter < page_num do 
			new_counter = new_counter + 1
			page_numbers.push(new_counter)
		end

		p page_numbers.join(" ")

		puts "> next"

	end

end