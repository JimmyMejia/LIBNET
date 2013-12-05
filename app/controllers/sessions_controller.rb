class SessionsController < ApplicationController
	def new

	end

	def create
		user = Usuario.validate_login(
			params[:session][:email],
			params[:session][:password]
		)

		if user
			sessions[:user_id] = user.user_id
			redirect_to "usuarios#view_profile"
		else
			flash[:status] = FALSE
			flash[:alert] = "Usuario o contrasenia no valida!"

			redirect_to login_path
		end

	end

	def destroy
		sessions[:user_id] = nil
		redirect_to login_path
	end
end