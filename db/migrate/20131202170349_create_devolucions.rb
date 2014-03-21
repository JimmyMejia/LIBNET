class CreateDevolucions < ActiveRecord::Migration
  def change
    create_table :devolucions do |t|
    	t.integer :prestamo_id
        t.integer :asistente_id
        t.datetime :fechadevolucion
      t.timestamps
    end
  end
end
