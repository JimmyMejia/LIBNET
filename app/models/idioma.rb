class Idioma < ActiveRecord::Base
	validates :idioma, presence: { message: "es requerido."},
					  length: { maximum: 50, too_long: "debe contener maximo %{count} caracteres."},
					  uniqueness: { message: "ya esta registrado." }
end
