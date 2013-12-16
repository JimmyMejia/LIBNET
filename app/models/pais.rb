class Pais < ActiveRecord::Base
	#validates_presence_of :pais
	validates :pais, presence: { message: "es requerido." }, 
					 length: { maximum: 30, too_long: "deberia contener máximo %{count} caracteres." },
					 uniqueness: { case_sensitive: false, message: "ya esta registrado."} 
end
