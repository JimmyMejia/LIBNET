class CreateTipomaterials < ActiveRecord::Migration
  def change
    create_table :tipomaterials do |t|
      t.string :descripcion, :limit => 50
      t.timestamps
    end
  end
end
