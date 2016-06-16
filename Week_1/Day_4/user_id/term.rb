require_relative("lib/user_id.rb")
require_relative("lib/word_count.rb")

user_id = User_id.new
word_count = Word_count.new

puts ""
puts "Please log  in to this awesome word processing program."

puts ""
puts "Username: "
username = gets.chomp


puts ""
puts "Password: "
password = gets.chomp

user_id.check(username,password)

puts "Please type something in the terminal so we can process it for you: "
text = gets.chomp.split(" ")
word_count.count_words(text)




