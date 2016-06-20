#app.rb
require_relative("lib/task.rb")


task = Task.new("Buy the milk")
p task.completed?
# false
task.complete!
p task.completed?
 task.makeincomplete!
p task.completed?
# true
# 1
task2 = Task.new("Wash the car")
#puts task2.id
# 2


task = Task.new("Buy the dog")
puts task.content 
# Buy the dog
task2 = Task.new("Walk the milk")
puts task2.content 
# Walk the milk
task.update_content!("Buy the milk")
task2.update_content!("Walk the dog")
puts task.content 
# Buy the milk
puts task2.content