class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :pais, :limit => 30
      t.timestamps
    end
  end
end
