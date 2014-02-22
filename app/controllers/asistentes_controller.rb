class AsistentesController < ApplicationController
	before_action :set_asistente, only: [:show, :edit, :update, :destroy]
  
  def index
  	@asistentes = Asistente.all
  end

  def new
  	@nuevo_asistente = Asistente.new
  end

  def create
  	@nuevo_asistente = Asistente.new(params_asistente)
  	respond_to do |format|
  		if @nuevo_asistente.save
  			format.html { redirect_to @nuevo_asistente, notice: "Asistente guardado correctamente." }
  		else
  			format.html {render action: "new" }
  		end
  	end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @nuevo_asistente.update(params_asistente)
        format.html { redirect_to @nuevo_asistente, notice: "Asistente actualizado correctamente." }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
  	@nuevo_asistente.destroy
  	flash[:notice] = "Asistente eliminado satisfactoriamente."
  	redirect_to asistentes_path
  end


  def params_asistente #:biblioteca_id,
  	params.require(:asistente).permit(:nombre, :direccion, :telefono, :celular, :email)
  end

  private
  def set_asistente
  	@nuevo_asistente = Asistente.find(params[:id])
  end
end
