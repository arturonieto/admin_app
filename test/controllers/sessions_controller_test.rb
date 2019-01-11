require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def test_index

  end


  def test_create

    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/'
    else
      render 'new'
      flash[:invalid_login] = "Your credentials are wrong"
    end

  end


end
