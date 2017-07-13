class EmployeeController < ApplicationController

	def index
		@employee = Employee.capitalize
	end

	def info
		employee = Employee.capitalize
		empId = params[:id]
		@data = employee[empId.to_i]
	end
end
