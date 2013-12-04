class CreateDevolucions < ActiveRecord::Migration
  def change
    create_table :devolucions do |t|
      #t.integer :idprestamo
      #t.integer :idasistente
      t.datetime :fechadevolucion
      t.timestamps
    end
  end
end
