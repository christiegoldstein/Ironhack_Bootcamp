
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
		page_counter = 0 
		page_numbers = []
		number_of_pages = (sorted_by_date.length%3)+1

		while page_counter < number_of_pages
			page_counter = page_counter + 1
			page_numbers.push(page_counter)
		end

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
			if  counter%3 == 0 || counter == sorted_by_date.length
				p page_numbers.join(' ')
				puts "> next"
			end

		end

	end

end