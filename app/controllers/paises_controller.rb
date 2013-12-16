class PaisesController < ApplicationController
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
    #redirect_to :controller => 'paises', :action => 'index'

  end

  # def show
  # 	@data = Pais.find(params[:id])
  # end

  def pais_params
  	params.require(:Pais).permit(:pais)
  end
end
