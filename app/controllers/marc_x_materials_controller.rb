class MarcXMaterialsController < ApplicationController
	before_action :set_marcxmaterial, only: [:show, :destroy, :edit, :update]

  def index
  	@marcxmateriales = Marcxmaterial.all
    @descripcion_marc = Marc.where('id = ?', @nuevo_marcxmaterial)
  end

  def new
    # VARIABLES USADAS PARA CARGAR LOS LISTBOX(SELECT DEL _FORM.HTML.ERB)
    @tipo_material = Tipomaterial.order("descripcion ASC")
    @marc_asignados = Marc.where('id IN (SELECT marc_id FROM marcxmaterials)')
    @marc_sin_asignar = Marc.where('id NOT IN (SELECT marc_id FROM marcxmaterials)')
    
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

