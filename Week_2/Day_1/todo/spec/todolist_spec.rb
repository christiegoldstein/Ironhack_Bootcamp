require_relative("../lib/task.rb")
require_relative("../lib/todolist.rb")
require("yaml")

RSpec.describe TodoList do 
	before :each do @todo = TodoList.new("Jack") end


	describe "#add_task" do
		it "add task to list of tasks" do
			task = @todo.add_task(Task.new("Walk the dog"))
			task2 = @todo.add_task(Task.new("Feed the dog"))
			task3 = @todo.add_task(Task.new("Buy the milk"))
			expect(@todo.tasks.length).to eq(3)
		end
	end	

	describe "#delete_task" do
    	it "delete task at specific id index" do
    		@@current_id = 1
    		task = Task.new("Walk the dog")
    		@todo.add_task(task)
    		
			task2 = Task.new("Feed the dog")
			@todo.add_task(task2)
		
			task3 = Task.new("Buy the milk")
			@todo.add_task(task3)
			
			@todo.delete_task(1)
      		expect(@todo.tasks.length).to eq(2)
    	end
	end

	describe "#find_task_by_id" do
    	it "find a task in array by the id number" do
    		@@current_id = 1
    		task = Task.new("Walk the dog")
    		@todo.add_task(task)
    		
			task2 = Task.new("Feed the dog")
			@todo.add_task(task2)
		
			task3 = Task.new("Buy the milk")
			@todo.add_task(task3)
			
			task_find = @todo.find_task_by_id(1)

      		expect(task_find.content).to eq("Walk the dog")
    	end
	end

	describe "#sort_by_created" do
    	it "sort by time created" do
    		@@current_id = 1
    		task = Task.new("Walk the dog")
    		@todo.add_task(task)
    		
			task2 = Task.new("Feed the dog")
			@todo.add_task(task2)
		
			task3 = Task.new("Buy the milk")
			@todo.add_task(task3)
			
			task_sort = @todo.sort_by_created

      		expect(task_sort[0].content).to eq("Walk the dog")
    	end
	end

	describe "#user" do
    	it "check who is the user" do
      		expect(@todo.user).to eq("Jack")
    	end
	end

	describe "#save" do
		it "save before loading" do
			task = Task.new("Walk the dog")
			@todo.add_task(task)
			task2 = Task.new("Buy the milk")
			@todo.add_task(task2)
			task3 = Task.new("Make my todo list into a web app")
			@todo.add_task(task3)
			@todo.save
			expect(task.content).not_to eq("")
		end
	end

	# describe "#load" do 
	# 	it "load tasks later in the day" do
	# 		task = Task.new("Walk the dog")
	# 		@todo.add_task(task)
	# 		task2 = Task.new("Buy the milk")
	# 		@todo.add_task(task2)
	# 		task3 = Task.new("Make my todo list into a web app")
	# 		@todo.add_task(task3)
	# 		@todo.load_tasks
	# 		expect(@todo.tasks.length).to eq(3)
	# 	end
	# end

	#@todo.load_tasks

end