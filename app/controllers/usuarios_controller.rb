class UsuariosController < ApplicationController
  def index
    @user = Usuario.all
  end
end
