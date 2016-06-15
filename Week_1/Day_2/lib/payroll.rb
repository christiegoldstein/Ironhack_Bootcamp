class Payroll
    def initialize(employees)
        @employees = employees
    end

    def notify_employee(employee)
          #email them
         employee.each do |person|
      		puts "Dear #{person.email}, You've Been Paid!"
     	 end
  	end

	def pay_employees
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week.
      notify_employee(@employees) 
      total_payroll = 0
    	@employees.each do |pay|
    		
    		total_payroll = total_payroll + pay.calculate_salary
    		#puts "#{pay.name} gets paid #{pay.calculate_salary}"
    	end
    	puts "Total Loss: #{total_payroll}"
	end
end