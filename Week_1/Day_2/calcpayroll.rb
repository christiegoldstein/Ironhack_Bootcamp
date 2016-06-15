require_relative("lib/employee.rb")
require_relative("lib/multipay.rb")
require_relative("lib/hourly.rb")
require_relative("lib/salaried.rb")
require_relative("lib/payroll.rb")


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
# josh.calculate_salary

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
# nizar.calculate_salary

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
# ted.calculate_salary

gabe = HourlyEmployee.new('Gabe', 'gabe@gmail.com', 15, 45)
# gabe.calculate_salary

christie =HourlyEmployee.new('Christie', 'christie@gmail.com', 15, 45)
# christie.calculate_salary

employees = []
employees.push(josh)
employees.push(nizar)
employees.push(ted)
employees.push(gabe)
employees.push(christie)


payroll = Payroll.new(employees)
payroll.pay_employees

