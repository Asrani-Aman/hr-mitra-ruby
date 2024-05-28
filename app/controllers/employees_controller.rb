class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(allowed_employee_params)
    if @employee.save
      
      redirect_to employees_path, notice: "Employee was successfully created."
      flash[:notice] = "Employee was successfully created yeahhhhhhhh!!!!!!!!!!!!!!!."
    else
      flash[:notice] = "Employee was not successfully created."
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @employee = Employee.find(params[:id])
  end
  def update
    @employee = Employee.find(params[:id])
    if @employee.update(allowed_employee_params)
      redirect_to employees_path, notice: "Employee was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

end


private
# This method defines strong parameters, which allow only specific attributes to be passed in the params hash.
# It ensures that only the permitted attributes can be used for mass assignment.
def allowed_employee_params
  params.require(:employee).permit(:first_name,:middle_name, :last_name, :personal_email, :city, :country, :state, :pincode, :address_line_1, :address_line_2)
end

