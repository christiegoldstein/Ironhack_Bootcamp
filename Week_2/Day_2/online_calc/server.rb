# server.rb

require "sinatra"
require_relative("lib/calculator.rb")

calculator = Calculator.new

get "/" do
	erb(:home)
end

post "/operate" do
	@first = params[:first_number].to_f
  	@second = params[:second_number].to_f
  	value = params[:operation]

  	if(value == "add")
  		calculator.add(@first, @second).to_s
  	elsif(value == "subtract")
  		calculator.subtract(@first, @second).to_s
  	elsif(value == "multiply")
  		calculator.multiply(@first, @second).to_s
  	elsif(value == "divide")
  		calculator.divide(@first, @second).to_s
  	end
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