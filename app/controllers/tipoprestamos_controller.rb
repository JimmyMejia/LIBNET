class TipoprestamosController < ApplicationController
	before_action :set_tipoprestamo, only: [:update, :show, :edit, :destroy]

  def index
  	@tipoprestamos = Tipoprestamo.all
  end

  def show
  end

  def new
  	@nuevo_tipoprestamo = Tipoprestamo.new
  end

  def create
  	@nuevo_tipoprestamo = Tipoprestamo.new(tipoprestamo_params)

  	respond_to do |format|
  		if @nuevo_tipoprestamo.save
  			format.html { redirect_to @nuevo_tipoprestamo, notice: "Tipo prestamo almacenado satisfactoriamente." }
  		else
  			format.html { render action: "new" }
  		end
  	end
  end

  def update
  	respond_to do |format|
  		if @nuevo_tipoprestamo.update(tipoprestamo_params)
  			format.html { redirect_to @nuevo_tipoprestamo, notice: "Tipo prestamo actualizado correctamente." }
		else
			format.html { render action: "edit" } 	
  		end
  	end
  end

  def destroy
  	@nuevo_tipoprestamo.destroy
  	respond_to do |format|
  		format.html { redirect_to tipoprestamos_path, notice: "Tipo prestamo eliminado satisfactoriamente." }
  	end
  end

  def set_tipoprestamo
  	@nuevo_tipoprestamo = Tipoprestamo.find(params[:id])
  end

  def tipoprestamo_params
  	params.require(:tipoprestamo).permit(:descripcion)
  end

end
