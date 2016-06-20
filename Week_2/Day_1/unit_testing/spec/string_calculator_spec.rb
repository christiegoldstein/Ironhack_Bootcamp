require_relative("../lib/string_calculator.rb")


RSpec.describe StringCalculator do 
	it "returns 0 for empty string" do
		the_calculator = StringCalculator.new
		expect(the_calculator.add("") ).to eq(0)
	end

	it "returns the number for a simple number" do
		the_calculator = StringCalculator.new
		expect(the_calculator.add("6") ).to eq(6)
		expect(the_calculator.add("9") ).to eq(9)
	end

	it "returns the numbers added up for two numbers" do 
		the_calculator = StringCalculator.new
	 	expect(the_calculator.add("5,7") ).to eq(12)
		expect(the_calculator.add("3,4") ).to eq(7)
	end
end