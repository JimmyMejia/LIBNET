class CreateMarcs < ActiveRecord::Migration
  def change
    create_table :marcs do |t|
      t.string :codigomarc, :limit => 25
      t.string :titulo, :limit => 255
      t.text :descripcion
      t.string :identificador, :limit => 50
      t.timestamps
    end
  end
end
