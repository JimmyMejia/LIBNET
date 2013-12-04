class CreatePagomulta < ActiveRecord::Migration
  def change
    create_table :pagomultas do |t|
      #t.integer :idmulta
      #t.integer :idasistente
      t.datetime :fechapago
      t.timestamps
    end
  end
end
