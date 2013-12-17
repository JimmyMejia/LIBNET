class PaisesController < ApplicationController
  before_action :set_pais, only: [:show, :edit, :update, :destroy]
  def index
  	@paises = Pais.all
  end

  def new
  	@nuevo_pais = Pais.new
  end

  def create
  	@nuevo_pais = Pais.new(params[:Pais].permit(:pais))
  	if @nuevo_pais.save
      flash[:notice] = "Pais guardado satisfactoriamente."
      flash[:color]= "valid"
      redirect_to paises_path
    else
      flash[:notice] = "Error al guardar el pais."
      flash[:color]= "invalid"
      render action: 'new'
    end
  end

  def show
    @nuevo_pais = Pais.find(params[:id])
  end

  def destroy
    @nuevo_pais.destroy
    flash[:notice] = "Pais guardado satisfactoriamente."
    redirect_to paises_path
  end

  def set_pais
    @nuevo_pais = Pais.find(params[:id])
  end

  def pais_params
  	params.require(:Pais).permit(:pais)
  end
end
