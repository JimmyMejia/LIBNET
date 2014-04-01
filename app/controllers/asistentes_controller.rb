class AsistentesController < ApplicationController
	before_action :set_asistente, :asistentes_bibliotecas, only: [:show, :edit, :update, :destroy]
  
  def index
  	@asistentes = Asistente.all
    @bibliotecas = Biblioteca.all
    #@biblioteca_name = Biblioteca.find(2) #where(:id => '1')
    #@biblioteca_name = Biblioteca.where("id = ?", params_asistente[:biblioteca_id])
    #@biblioteca_name = Biblioteca.find_by_sql(SELECT nombre FROM id = params_asistente[:biblioteca_id])
    #Biblioteca.joins(:asistente).where(Biblioteca: {nombre: nombre})
    #@biblioteca_name = Biblioteca.all(:select => "nombre", :conditions => ["biblioteca_id", params_asistente[:biblioteca_id]])
  end

  def new
    # VARIABLE USADA PARA CARGAR EL LISTBOX(SELECT DEL _FORM.HTML.ERB)
    @bibliotecas = Biblioteca.where("estado = 1").order("id ASC")

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
  	params.require(:asistente).permit(:biblioteca_id, :nombre, :direccion, :telefono, :celular, :email)
  end

  private
  def set_asistente
  	@nuevo_asistente = Asistente.find(params[:id])
  end

  private 
  def asistentes_bibliotecas
      @idbiblioteca = @nuevo_asistente.biblioteca_id
      @relacion_biblioteca = Biblioteca.find(@idbiblioteca)
  end

end
