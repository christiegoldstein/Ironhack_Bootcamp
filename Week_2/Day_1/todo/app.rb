#app.rb
require 'sinatra'
require 'sinatra/reloader'

require_relative("lib/task.rb")
require_relative("lib/todolist.rb")

todo_list = TodoList.new("Josh")


get "/" do
	erb(:home)
end

get "/task" do
	@task_list = todo_list.tasks
	erb(:task_index)
end

get "/new_task" do
	erb(:new_task)
end

post "/create_task" do
	@task = params[:task]

	new_task = Task.new(@task)
	todo_list.add_task(new_task)
	#todo_list.save
    redirect to('/task')
end

get "/complete_task/:id" do
	@id = params[:id]
	task_find = todo_list.find_task_by_id(@id)
	if task_find
		@complete_task = task_find.complete!
	end
	redirect to('/task')
end
