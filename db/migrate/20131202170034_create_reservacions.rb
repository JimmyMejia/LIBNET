class CreateReservacions < ActiveRecord::Migration
  def change
    create_table :reservacions do |t|
      #t.integer :idejemplar
      #t.integer :idusuario
      t.datetime :fechareserva
      t.text :observaciones
      t.string :estado, :limit => 20
      t.timestamps
    end
  end
end
