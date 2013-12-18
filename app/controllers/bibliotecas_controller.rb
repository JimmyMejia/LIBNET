class BibliotecasController < ApplicationController
  before_action :set_biblioteca, only: [:show, :edit, :update, :destroy]
  def index
  	@bibliotecas = Biblioteca.all
  end

  def new
  	@nueva_biblioteca = Biblioteca.new
  end

  def create
  	@nueva_biblioteca = Biblioteca.new(params_biblioteca)
    respond_to do |format|
    	if @nueva_biblioteca.save
    		format.html { redirect_to @nueva_biblioteca, notice: "Biblioteca guardada correctamente."}
    		# flash[:color] = "valid"
    		# redirect_to bibliotecas_path
    	else
    		format.html {	render action: "new" }
    	end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @nueva_biblioteca.update(params_biblioteca)
        format.html { redirect_to @nueva_biblioteca, notice: "Biblioteca actualizada correctamente." }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @nueva_biblioteca.destroy
    flash[:notice] = "Biblioteca eliminada satisfactoriamente."
    redirect_to bibliotecas_path
  end

  def params_biblioteca
  	params.require(:biblioteca).permit(:nombre, :direccion, :telefono, :email, :logo)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biblioteca
      @nueva_biblioteca = Biblioteca.find(params[:id])
    end

end
