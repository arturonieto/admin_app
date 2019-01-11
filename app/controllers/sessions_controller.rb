class SessionsController < ApplicationController
  before_action :logged_user, only: [:index, :create]
  before_action :require_user, except: [:index, :create]
  before_action :verify_role, only: [:show]

  def index
  end

  def create
    if user = User.find_by_email(params[:email].downcase)
      if user && user.authenticate(params[:password])
        log_in user
        if current_user.allowed_role?(2)
          redirect_to '/show'
        else
          redirect_to view_path
        end
      else
        redirect_to '/'
        flash[:invalid_login] = "Tus credenciales son incorrectas"
      end
    else
      redirect_to '/'
      flash[:invalid_login] = "Tus credenciales son incorrectas"
    end
  end

  def show
    @user = User.where("role = '1'").order(:id)
    @employees = @user.map do |u| u.employee end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
