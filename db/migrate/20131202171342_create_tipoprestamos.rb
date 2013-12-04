class CreateTipoprestamos < ActiveRecord::Migration
  def change
    create_table :tipoprestamos do |t|
      t.string :descripcion, :limit => 50
      t.timestamps
    end
  end
end
