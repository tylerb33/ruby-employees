class Employee

	attr_accessor :employee_name 
	attr_accessor :employee_title 
	attr_accessor :employee_start_date
    
	def initialize(name, job_title, start_date)
		# the @ symbol marks an instance variable
		@employee_name = name
		@employee_title = job_title
		@employee_start_date = start_date
	end

end


class Company

	attr_accessor :company_name 
	attr_accessor :employees
    
    def initialize(company_name)
        @company_name = company_name
        @employees = Array.new
    end

    #Returns the name of the company
    # def company_name
    #     @company_name
    # end
end


# Create a company
facebook = Company.new("Facebook")

# Create some employees
john = Employee.new("John", "Accountant", "May 1, 2000")
jeremy = Employee.new("Jeremy", "SVP", "January 15, 2002")
daniel = Employee.new("Daniel", "CEO", "July 4, 2012")


# Push employees into company
facebook.employees.push(john)
facebook.employees.push(jeremy)
facebook.employees.push(daniel)

print facebook.employees
