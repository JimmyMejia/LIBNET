class SessionsController < ApplicationController
	def new

	end

	def create
		user = Usuario.authenticate(
			params[:session][:email],
			params[:session][:password]
		)

		if user.nil?
			flash[:alert] = "Usuario o contrasenia no valida!"
			render :new
		else
			sign_in user
			redirect_to user
		end

	end

	def destroy
		sign_out
		redirect_to login_path
	end
end