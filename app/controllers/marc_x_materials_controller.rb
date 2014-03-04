class MarcXMaterialsController < ApplicationController
	before_action :set_marcxmaterial, only: [:show, :destroy, :edit, :update]

  def index
  	@marcxmateriales = Marcxmaterial.all
    @marc_asignados = Marcxmaterial.joins('LEFT JOIN marcs m ON m.id = marcxmaterials.marc_id WHERE m.id IN (SELECT marc_id FROM marcs)')
    /select * 
  from marcxmaterials left join marcs m
  on m.id = marcxmaterials.marc_id
  where m.id in (select id from marcxmaterials);/
  end

  def new
  	@nuevo_marcxmaterial = Marcxmaterial.new
  end

  def create
  	@nuevo_marcxmaterial = Marcxmaterial.new(params_marcxmaterial)
  	respond_to do |format|
  		if @nuevo_marcxmaterial.save
  			format.html { redirect_to @nuevo_marcxmaterial, notice: "MarcXMaterial guardado correctamente." }
  		else
  			format.html { render actio: "new" }
  		end
  	end
  end

  def edit
  end

  def show
  end

  def update
  	respond_to do |format|
  		if @nuevo_marcxmaterial.update(params_marcxmaterial)
  			format.html { redirect_to @nuevo_marcxmaterial, notice: "MarcXMaterial actualizado correctamente." }
  		else
  			format.html { render action: "edit" }
  		end
  	end
  end

  def destroy
  	@nuevo_marcxmaterial.destroy
  	flash[:notice] = "MarcXMaterial eliminado satisfactoriamente."
  	redirect_to marcxmaterials_path
  end

  private
  def params_marcxmaterial
  	params.require(:marcxmaterial).permit(:tipomaterial_id, :marc_id)
  end

  private 
  def set_marcxmaterial
 	@nuevo_marcxmaterial = Marcxmaterial.find(params[:id])
  end
end

