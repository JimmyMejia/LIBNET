class SorceryCore < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.integer :tipousuario
      t.string :identificacion, :limit => 30
      t.string :nombre, :limit => 80
      t.text :direccion
      t.string :telefono, :limit => 8
      t.string :celular, :limit => 8
      t.datetime :fecharegistro
      t.string :username,         :null => false, :limit => 20  # if you use another field as a username, for example email, you can safely remove this field.
      t.string :email,            :default => nil, :limit => 40 # if you use this field as a username, you might want to make it :null => false.
      t.string :crypted_password, :default => nil
      t.string :salt,             :default => nil
      t.integer :estado
      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end