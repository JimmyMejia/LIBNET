class CreateUsuario < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :tipousuario
      t.string :identificacion, :limit => 30
      t.string :nombre, :limit => 80
      t.text :direccion
      t.string :telefono, :limit => 8
      t.string :celular, :limit => 8
      t.string :email, :limit => 40
      t.datetime :fecharegistro
      t.string :usuario, :limit => 20
      t.string :contrasenia
      t.integer :estado
      t.timestamps

    end
  end
end
