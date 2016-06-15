class MultiPaymentEmployee < Employee
    def initialize(name, email, base_salary, rate, hours)
    	super(name, email)
        @base_salary = base_salary
        @rate = rate 
        @hours = hours 
    end

    def calculate_salary
       if @hours > 40 
       	 over_time = @hours - 40
       end

       overtime_salary = over_time * @rate

       msal = (@base_salary/52) + overtime_salary
       with_tax = ((@base_salary/52) + overtime_salary)*(1-0.18)
       puts "MultiPayment Salary for #{name}: #{with_tax}"
       msal
    end
end