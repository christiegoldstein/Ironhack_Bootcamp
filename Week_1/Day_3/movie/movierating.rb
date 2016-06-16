require("imdb")

file = "title.txt"
movies_arr = []
File.readlines(file).each do |line|
	movies_arr.push(line.chomp)
end

p movies_arr


ghost_search = Imdb::Search.new(movies_arr[0])
diehard_search = Imdb::Search.new(movies_arr[1])
godfather_search = Imdb::Search.new(movies_arr[2])
home_search = Imdb::Search.new(movies_arr[3])
startrek_search = Imdb::Search.new(movies_arr[4])
night_search = Imdb::Search.new(movies_arr[5])
titanic_search = Imdb::Search.new(movies_arr[6])



#.movies is a method that returns an array of movies containing the results
first_result = ghost_search.movies[0]
second_result = diehard_search.movies[0]
third_result = godfather_search.movies[0]
fourth_result = home_search.movies[0]
fifth_result = startrek_search.movies[0]
sixth_result = night_search.movies[0]
seventh_result = titanic_search.movies[0]

results = [first_result,second_result,third_result,fourth_result,fifth_result,sixth_result,seventh_result]


#movie_max = 7
counter = 10 
while counter > 0 do
	chart = ""
	results.each do |movie|
		if movie.rating >= counter
			chart +=  "|*|"
		else 
			chart += "| |"
		end

	#puts chart


	end 
	puts chart
	counter -= 1
end

puts " 1  2  3  4  5  6  7"
puts "1. #{first_result.title}"
puts "2. #{second_result.title}"
puts "3. #{third_result.title}"
puts "4. #{fourth_result.title}"
puts "5. #{fifth_result.title}"
puts "6. #{sixth_result.title}"
puts "7. #{seventh_result.title}"

# first_rating = first_result.rating.to_f.ceil
# second_rating = second_result.rating.to_f.ceil
# third_rating = third_result.rating.to_f.ceil
# fourth_rating = fourth_result.rating.to_f.ceil
# fifth_rating = fifth_result.rating.to_f.ceil
# sixth_rating = sixth_result.rating.to_f.ceil
# seventh_rating = seventh_result.rating.to_f.ceil






