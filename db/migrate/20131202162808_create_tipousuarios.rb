class CreateTipousuarios < ActiveRecord::Migration
  def change
    create_table :tipousuarios do |t|
      t.string :descripcion, :limit => 50
      t.timestamps
    end
  end
end
