class Marc < ActiveRecord::Base

	has_many :marcxmaterials
	has_many :tipomaterials, through: :marcxmaterials

	validates :codigomarc, presence: { message: "es requerido." },
						   length: { maximum: 25, too_long: "debe contener un maximo de %{count} caracteres. " },
						   uniqueness: { message: "ya esta registrado."}
	validates :titulo, presence: { message: "es requerido" },
					   length: { maximum: 255, too_long: "debe contener un maximo de %{count} caracteres." },
					   uniqueness: { message: "ya esta registrado." }
	validates :descripcion, presence: { message: "es requerido." }
	validates :identificador, presence: { message: "es requerido." },
							  length: { maximum: 50, too_long: "debe contener un maximo de %{count} caracteres." }
end
