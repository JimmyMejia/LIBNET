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
  	if @nueva_biblioteca.save
  		flash[:notice] = "Biblioteca guardada correctamente."
  		flash[:color] = "valid"
  		redirect_to bibliotecas_path
  	else
  		flash[:notice] = "Error al guardar la biblioteca."
  		flash[:color] = "invalid"
  		render action: "new"
  	end
  end

  def show
  end

  def edit
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
