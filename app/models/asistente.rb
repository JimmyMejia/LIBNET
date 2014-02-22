class Asistente < ActiveRecord::Base
	#validates :biblioteca_id, presence: { message: "es requerido." }
	validates :nombre, presence: { message: "es requerido."},
					   length: { maximum: 80, too_long: "debe contener un maximo de %{count} caracteres." },
					   uniqueness: { message: "ya esta registrado." }
	validates :direccion, presence: { message: "es requerida."}
	validates :telefono, numericality: { only_integer: true, message: "debe contener solo numeros." },
						 length: { maximum: 8, too_long: "debe tener un maximo de %{count} caracteres." }
	validates :celular, numericality: { only_integer: true, message: "debe contener solo numeros." },
						 length: { maximum: 8, too_long: "debe tener un maximo de %{count} caracteres." }					 
	validates :email, length: {maximum: 40, too_long: "debe contener un maximo de %{count} caracteres." }
	
end
