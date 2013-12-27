class Tipomaterial < ActiveRecord::Base
	validates :descripcion, presence: { message: "es requerido." },
							length: { maximum: 50, too_long: "debe contener máximo %{count} caracteres." },
							uniqueness: { message: "ya esta registrado." }
end
