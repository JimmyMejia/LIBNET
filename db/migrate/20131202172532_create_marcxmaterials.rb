class CreateMarcxmaterials < ActiveRecord::Migration
  def change
    create_table :marcxmaterials do |t|
      t.integer :tipomaterial_id
      t.integer :marc_id
      t.timestamps
    end
  end
end
