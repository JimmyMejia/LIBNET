class TipomaterialesController < ApplicationController
	before_action :set_tipomateriales, only: [:show, :edit, :destroy, :update]

  def index
  	@tipomateriales = Tipomaterial.all
  end

  def show
  end

  def new
  	@nuevo_tipomaterial = Tipomaterial.new
  end

  def create
  	@nuevo_tipomaterial = Tipomaterial.new(params_tipomaterial)
  	respond_to do |format|
  		if @nuevo_tipomaterial.save
  			format.html { redirect_to tipomateriales_path, notice: "Tipo material almacenado correctamente." }
  		else
  			format.html { render action: "new" }
  		end
  	end
  end

  def update
    respond_to do |format|
      if @nuevo_tipomaterial.update(params_tipomaterial)
        format.html { redirect_to tipomateriales_path, notice: "Tipo de material actualizado correctamente." }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @nuevo_tipomaterial.destroy
    respond_to do |format|
       format.html { redirect_to tipomateriales_path }
     end
  end

  def set_tipomateriales
  	@nuevo_tipomaterial = Tipomaterial.find(params[:id])
  end

  def params_tipomaterial
  	params.require(:tipomaterial).permit(:descripcion)
  end

end
