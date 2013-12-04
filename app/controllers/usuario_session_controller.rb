class UsuarioSessionController < ApplicationController
  def new
    @user = Usuario.new
  end

  def create
    if @user = login(params[:username], params[:password])
      render :action =>  'usuarios/index'
      #redirect_back_or_to (usuario_path, message: "Login exitoso")
    else
      flash.now[:alert] = "Algo salio mal con el login"
      render action: :new
    end
  end

  def destroy
    logout
    render :action =>  'usuarios/new'
    #redirect_to (:usuarios, message: "Login cerrado")
  end

end