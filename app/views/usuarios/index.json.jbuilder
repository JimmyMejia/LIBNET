json.array!(@usuarios) do |usuario|
  json.extract! usuario, :tipousuario, :integer, :identificacion, :nombre, :direccion, :telefono, :celular, :fecharegistro, :username, :email, :crypted_password, :salt, :estado
  json.url usuario_url(usuario, format: :json)
end
