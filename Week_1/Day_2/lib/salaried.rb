class SalariedEmployee < Employee

    def initialize(name, email, yearly_salary)
        super(name, email)
        @yearly_salary = yearly_salary
    end

    def calculate_salary
       ssal = (@yearly_salary/52)
       with_tax = (@yearly_salary/52)*(1-0.18)
       puts"Salary for #{name}: #{with_tax}"
       ssal
    end
end