require_relative("../lib/task.rb")

RSpec.describe Task do 
	before :each do @task = Task.new("Buy the milk") end


	describe "#completed?" do
		it "check status of task" do
			expect(@task.completed?).to eq(false)
		end
	end	

	describe "#complete!" do
    	it "change status of task to complete" do
      		expect(@task.complete!).to eq(true)
    	end
	end

	describe "#makeincomplete!" do
    	it "if status is marked as completed, change it to false (meaning incomplete)" do
      		expect(@task.makeincomplete!).to eq(false)
    	end
	end

	# describe "#created_at" do
 #    	it "create time to now when task is initalized" do
 #      		expect(@task.created_at).to eq(Time.now)
 #    	end
	# end



	describe "#update_content!" do
    	it "method to update task's text" do
      		expect(@task.update_content!("Walk the dog")).to eq(@task.content)
    	end
	end
end