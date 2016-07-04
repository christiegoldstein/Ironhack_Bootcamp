class QuotesController < ApplicationController
	def new
		render 'new'
	end

	def create
		@number = params[:number]
		@choice = params[:choice]

		@quotes_arr = [" I think if your clients want to sit on my shoulders and call themselves tall, they have the right to give it a try - but there's no requirement that I enjoy sitting here listening to people lie. You have part of my attention - you have the minimum amount. The rest of my attention is back at the offices of Facebook, where my colleagues and I are doing things that no one in this room, including and especially your clients, are intellectually or creatively capable of doing.",
		               "Everybody on campus was using it. 'Facebook me' swas the common expression after two weeks. And Mark was the biggest thing on a campus that included 19 Nobel laureates, 15 Pulitzer prize winners, 2 future Olympians and a movie star.",
		               "Without money the site can't function. Okay, let me tell you the difference between Facebook and everyone else, we don't crash EVER!"]


		##for paragraphs 
		if(@choice == "paragraph")
			@para_arr = []
			count = 0 
			index = 0 
			while count < @number.to_i do
				if index == 3
					index == 0 
				else
					@para_arr.push(@quotes_arr[index])
					#index += 1
					count += 1
				end
			end

		elsif(@choice == "word")
			new_arr = @quotes_arr[0].split(" ")
			@words = new_arr.first(@number.to_i).join(" ")
		end


		render 'result'               
	end
end
