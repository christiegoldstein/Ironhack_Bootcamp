class TextInspection 

 	def frequency(text)
 		frequency = Hash.new(0)

 		text.split(" ").each do |word|
 			frequency[word.downcase] += 1
 		end 

 		return frequency.sort_by{|key, value| -value}.first(10)
 	end

end
