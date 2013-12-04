class CreateBibliotecas < ActiveRecord::Migration
  def change
    create_table :bibliotecas do |t|
      t.string :nombre, :limit => 50
      t.text :direccion
      t.string :telefono, :limit => 8
      t.string :email, :limit => 40
      t.string :logo, :limit => 250
      t.integer :estado
      t.timestamps
    end
  end
end
