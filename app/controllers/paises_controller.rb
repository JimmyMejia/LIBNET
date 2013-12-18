class PaisesController < ApplicationController
  before_action :set_pais, only: [:show, :edit, :update, :destroy]

  def index
  	@paises = Pais.all
  end

  def show
  end

  def new
  	@nuevo_pais = Pais.new
  end

  def create
  	@nuevo_pais = Pais.new(params[:nuevo_pais])
      respond_to do |format|
        if @nuevo_pais.save
            format.html { redirect_to @nuevo_pais, notice: "Pais guardado satisfactoriamente." }         
        else
         format.html { render action: 'new' }
        end
      end
  end

   def destroy
    #@nuevo_pais.destroy
    respond_to do |format|
      if @nuevo_pais.destroy
         format.html { redirect_to paises_url, notice: "Pais eliminado satisfactoriamente." }
       else
        format.html { reirect_to paises_path, notice: "No se pudo eliminar el pais."}
      end
    end
    #redirect_to paises_path
  end

  def set_pais
    @nuevo_pais = Pais.find(params[:id])
  end

  def pais_params
  	params.require(:pais).permit(:pais)
  end
end
