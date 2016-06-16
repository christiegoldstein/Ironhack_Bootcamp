#user_id.rb
class User_id

	def check(username,password)
		if(username.downcase == "christie" && password.downcase == "goldstein")
			puts = ""
			puts "Hello #{username}!"
		else
			puts = ""
			puts "INCORRECT! Cannot proceed!"
			exit
		end
	end
end