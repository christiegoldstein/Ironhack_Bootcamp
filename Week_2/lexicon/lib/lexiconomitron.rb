class Lexiconomitron
	def eat_t(string)
		str = string.split(//)
		t_letter = "T"
		str.delete(t_letter.downcase)
		str.delete(t_letter)
		str
		str.join
	end

	def shazam(arr)
		arr.each do |word|
			word.reverse!
		end
	
		new_arr = [arr[0],arr[arr.length-1]]
		
		eat_arr = eat_t(new_arr.join(","))
		eat_arr.split(",")
	end

	def oompa_loompa(arr)

		new_arr = arr.select do |word|
			word.length < 4
	
		end

		eat_arr = eat_t(new_arr.join(","))
		eat_arr.split(",")

	end
end