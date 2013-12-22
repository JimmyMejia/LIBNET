class TipousuariosController < ApplicationController
  before_action :set_tipousuario, only: [:show, :destroy, :edit, :update ]

  def index
  	@tipousuarios = Tipousuario.all
  end

  def show
  end

  def new
  	@nuevo_tipousuario = Tipousuario.new
  end

  def create
  	@nuevo_tipousuario = Tipousuario.new(params_usuario)
  	respond_to do |format|
  		if @nuevo_tipousuario.save
  			format.html { redirect_to @nuevo_tipousuario, notice: "Tipo de usuario almacenado satisfactoriamente." }
  		else
  			format.html { render action: "new" }
  		end
  	end
  end

  def update
  	 respond_to do |format|
  	 	if @nuevo_tipousuario.update(params_usuario)
  	 		format.html { redirect_to @nuevo_tipousuario, notice: "Tipo de usuario actualizado correctamente." }
  	 	else
  	 		format.html { render action: 'edit' }
  	 	end
  	 end	
  end

  def destroy
  	@nuevo_tipousuario.destroy
  	respond_to do |format|
  		format.html { redirect_to tipousuarios_path }
  	end
  end

  def set_tipousuario
  	@nuevo_tipousuario = Tipousuario.find(params[:id])
  end

  def params_usuario
  	params.require(:tipousuario).permit(:descripcion)
  end
end
