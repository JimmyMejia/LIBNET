class UsuariosSessionController < ApplicationController
  def new
    @user = Usuario.new
  end

  def create
    if @user = logi
  end
end