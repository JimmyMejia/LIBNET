class CreateRenovacions < ActiveRecord::Migration
  def change
    create_table :renovacions do |t|
      #t.integer :idprestamo
      #t.integer :idasistente
      t.string :observaciones, :limit => 80
      t.datetime :fecharenovacion
      t.datetime :fechadevolucion
      t.timestamps
    end
  end
end
