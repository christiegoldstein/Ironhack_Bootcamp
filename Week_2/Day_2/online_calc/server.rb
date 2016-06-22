# server.rb

require "sinatra"
require_relative("lib/calculator.rb")
require_relative("lib/memorysaver.rb")


calculator = Calculator.new
my_memory = MemorySaver.new

get "/" do
	@memory_number = my_memory.load
	erb(:home)

end

post "/operate" do

	@first = params[:first_number].to_f
  	@second = params[:second_number].to_f
  	@value = params[:operation]

	if(@value == "add")
		@final = calculator.add(@first, @second).to_s
	elsif(@value == "subtract")
	  	@final = calculator.subtract(@first, @second).to_s
	elsif(@value == "multiply")
	  	@final = calculator.multiply(@first, @second).to_s
	elsif(@value == "divide")
	  	@final = calculator.divide(@first, @second).to_s
	end

	erb(:result)

end

post "/save_to_memory" do
	my_memory.save(params[:result])
	redirect to("/")
end



# get "/add" do
#   erb(:add)
# end

# get "/subtract" do
#   erb(:subtract)
# end

# get "/multiply" do
#   erb(:multiply)
# end

# get "/divide" do
#   erb(:divide)
# end

# post "/calculate_add" do

#   @first = params[:first_number].to_f
#   @second = params[:second_number].to_f
#   calculator.add(@first, @second).to_s

# end

# post "/calculate_subtract" do

#   @first = params[:first_number].to_f
#   @second = params[:second_number].to_f
#   calculator.subtract(@first, @second).to_s
# end

# post "/calculate_multiply" do

#   @first = params[:first_number].to_f
#   @second = params[:second_number].to_f
#   calculator.multiply(@first, @second).to_s
# end

# post "/calculate_divide" do

#   @first = params[:first_number].to_f
#   @second = params[:second_number].to_f
#   calculator.divide(@first, @second).to_s
# end