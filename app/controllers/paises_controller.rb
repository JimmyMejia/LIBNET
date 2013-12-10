class PaisesController < ApplicationController
  def index
  	@pais = Pais.all
  end

  def new
  	@pais = Pais.new
  end

  def create
  	@pais = Pais.new(pais_params)
  	if @pais.save
      flash[:notice] = "Pais guardado satisfactoriamente"
      flash[:color]= "valid"
      #redired_to @data
    else
      flash[:notice] = "Error al guardar el pais"
      flash[:color]= "invalid"
    end
    render "index"

  end

  def show
  	@data = Pais.find(params[:id])
  end

  def pais_params
  	params.require(:Pais).permit(:pais)
  end
end
