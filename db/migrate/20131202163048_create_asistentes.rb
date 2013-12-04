class CreateAsistentes < ActiveRecord::Migration
  def change
    create_table :asistentes do |t|
      #t.integer idbiblioteca
      t.string :nombre, :limit => 80
      t.text :direccion
      t.string :telefono, :limit => 8
      t.string :celular, :limit => 8
      t.string :email, :limit => 40
      t.integer :cantidaddeprestamos
      t.integer :cantidaddedevolucion
      t.integer :estado
      t.timestamps
    end
  end
end
