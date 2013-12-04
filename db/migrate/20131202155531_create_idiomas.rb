class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.string :idioma, :limit => 50
      t.timestamps
    end
  end
end
