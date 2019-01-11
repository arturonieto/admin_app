class UsersController < ApplicationController
before_action :require_user
before_action :verify_role

  def index
    @employee = Employee.find(params[:id])
    @user = User.find(@employee.user_id)
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(new_user_params)
    user.id = User.maximum('id') + 1
    user.employee.id = Employee.maximum('id') + 1

    if user.save!
      redirect_to index_path
    else
      redirect_to 'show/new'
    end

  end

  def edit
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to '/'
    else
      redirect_to edit_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :email, employee_attributes: [:id, :first_name, :last_name])
  end

  def new_user_params
    params.require(:user).permit(:email, :password, :role, employee_attributes: [:first_name, :last_name])
  end

end
