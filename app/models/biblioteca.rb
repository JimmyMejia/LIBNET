class Biblioteca < ActiveRecord::Base
	has_many :asistente
	validates :nombre, presence: { message: "es requerido."},
					   length: { maximum: 50, too_long: "debe contener un maximo de %{count} carateres." },
					   uniqueness: { message: "ya esta registrada."}
	validates :direccion, presence: { message: " es requerida."}
	validates :telefono, numericality: { only_integer: true, message: "debe contener solo numeros." },
						  length: { maximum: 8, too_long: "debe tener un maximo de %{count} caracteres.",
						  minimum: 8, too_short: "debe contener un minimo de %{count} caracteres." }
	validates :email, presence: { message: "es requerido." },
					  length: { maximum: 40, too_long: "debe tener un maximo de %{count} caracteres." }
	#validates :logo, presence: { message: "es requerido." },
					  #length: { maximum: 255, too_long: "coloque la imagen en una ruta mas corta."}
end
