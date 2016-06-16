# app.rb

require_relative("lib/caffeine_consumer.rb")
require_relative("lib/payable.rb")
require_relative("lib/designer.rb")
require_relative("lib/programmer.rb")


the_designer = Designer.new
the_designer.receieve_salary
puts ""

the_programmer = Programmer.new
the_programmer.program