class CreateEjemplars < ActiveRecord::Migration
  def change
    create_table :ejemplars do |t|
      #t.integer :idbiblioteca
      #t.integer :idficha
      #t.integer :idasistente
      t.integer :cantidad
      t.datetime :fechaadquisicion
      t.timestamps
    end
  end
end
