class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def check_login
  	if !session[:user_id]
  		flash[:status] = FALSE
        flash[:alert] = "Necesitas loguearte para tener acceso a LIBNET"

        redirect_to login_path
    else
        @user = Usuario.find(session[:user_id])
        $user_full_name = @user.username
  	end
  end
end
