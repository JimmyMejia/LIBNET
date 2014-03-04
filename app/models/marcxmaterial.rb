class Marcxmaterial < ActiveRecord::Base

	belongs_to :marc
	belongs_to :tipomaterial

	validates :tipomaterial_id, presence: { message: "es requerido." }
	validates :marc_id, presence: { message: "es requerido." }

end
