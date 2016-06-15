class HourlyEmployee < Employee
	
    def initialize(name, email, hourly_rate, hours_worked)
    	super(name, email)
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked

    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      hsal = (@hourly_rate * @hours_worked)
      with_tax = (@hourly_rate * @hours_worked)*(1-0.18)
      puts"Hourly Salary for #{name}: #{with_tax}"
      hsal
    end
end