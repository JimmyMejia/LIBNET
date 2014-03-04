class Tipomaterial < ActiveRecord::Base

	has_many :marcxmaterials
	has_many :marcs, through: :marcxmaterials

	validates :descripcion, presence: { message: "es requerido." },
							length: { maximum: 50, too_long: "debe contener maximo %{count} caracteres." },
							uniqueness: { message: "ya esta registrado." }
end
