class IdiomasController < ApplicationController
	before_action :set_idioma, only: [:update, :show, :edit, :destroy]

  def index
  	@idiomas = Idioma.all
  end

  def show
  end

  def new
  	@nuevo_idioma = Idioma.new
  end

  def create
  	@nuevo_idioma = Idioma.new(idiomas_params)

      respond_to do |format|
        if @nuevo_idioma.save
      		format.html { redirect_to @nuevo_idioma, notice: "Idioma guardado satisfactoriamente."}
      		#flash[:color] = "valid"
      		#redirect_to veridioma_path/@nuevo_idioma
      	else
          format.html { render action: 'new' }
      		# flash[:notice] = "Error al guardar el idioma."
      		# flash[:color] = "invalid"
      		# render action: "new"
      	end
      end
  end

  def update
    respond_to do |format|
      if @nuevo_idioma.update(idiomas_params)
        format.html { redirect_to @nuevo_idioma, notice: "Idioma modificado satisfactoriamente."}
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @nuevo_idioma.destroy
      respond_to do |format|
        format.html { redirect_to idiomas_url, notice: "Idioma eliminado satisfactoriamente." }
      end
  end

  def set_idioma
  	@nuevo_idioma = Idioma.find(params[:id])
  end

  def idiomas_params
  	params.require(:idioma).permit(:idioma)
  end

end
