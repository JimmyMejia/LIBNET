class Tipoprestamo < ActiveRecord::Base
	validates :descripcion, presence: { message: "es requerida."},
							length: { maximum: 50, too_long: "debe contener %{count} caracteres maximo." },
							uniqueness: { message: "ya esta registrado."}
end
