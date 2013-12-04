class CreateMulta < ActiveRecord::Migration
  def change
    create_table :multas do |t|
      #t.integer :idprestamo
      t.text :observaciones
      t.datetime :fechamulta
      t.decimal :totalmulta
      t.string :estado, :default => 'Pendiente'
      t.timestamps
    end
  end
end
