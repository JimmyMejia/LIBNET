class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      #t.integer :idusuario
      #t.integer :idasistente
      #t.integer :idtipoprestamo
      #t.integer :idejemplar
      t.datetime :fechaprestamo
      t.datetime :fechadevolucion
      t.timestamps
    end
  end
end
