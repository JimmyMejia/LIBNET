class CreateMarcxmaterials < ActiveRecord::Migration
  def change
    create_table :marcxmaterials do |t|
      #t.integer :idtipomaterial
      #t.integer :idmarc
      t.timestamps
    end
  end
end
