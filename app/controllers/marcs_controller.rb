class MarcsController < ApplicationController
  before_action :set_marc, only: [:show, :edit, :update, :destroy ]

  def index
  	@marcs = Marc.all
  end

  def new
  	@nuevo_marc = Marc.new
  end

  def create
  	@nuevo_marc = Marc.new(params_marc)
  	respond_to do |format|
  		if @nuevo_marc.save
  			format.html { redirect_to @nuevo_marc, notice: "Marc guardado correctamente." }
  		else
  			format.html { render action: "new" }
  		end
  	end
  end

  def edit
  end

  def show
  end

  def update
  	respond_to do |format|
  		if @nuevo_marc.update(params_marc)
  			format.html { redirect_to @nuevo_marc, notice: "Marc actualizado correctamente." }
  		else
  			format.html { render action: "edit" }
  		end
  	end
  end

  def destroy
  	@nuevo_marc.destroy
  	flash[:notice] = "Marc eliminado satisfactoriamente."
  	redirect_to marcs_path
  end

  private
  def params_marc
  	params.require(:marc).permit(:codigomarc, :titulo, :descripcion, :identificador)
  end

  private
  def set_marc
  	@nuevo_marc = Marc.find(params[:id])
  end
end
