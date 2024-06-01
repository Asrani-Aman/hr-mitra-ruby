class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
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
      flash.now[:error] = "Employee creation failed: #{@employee.errors.full_messages.join(", ")}"
      render :new, status: :unprocessable_entity
    end
  end
  def edit
  end
  def update
    if @employee.update(allowed_employee_params)
      redirect_to employees_path, notice: "Employee was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @employee.destroy
    redirect_to employees_path, notice: "Employee was successfully deleted."
  end
  def show

  end

end


private
def set_employee
  @employee = Employee.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    redirect_to employees_path, notice: e
end
# This method defines strong parameters, which allow only specific attributes to be passed in the params hash.
# It ensures that only the permitted attributes can be used for mass assignment.
def allowed_employee_params
  params.require(:employee).permit(:first_name, :last_name, :personal_email, :city, :country, :state, :pincode, :address_line_1, :address_line_2, :date_of_birth, :date_of_joining, :about, :job_title)
end

