json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome
  json.url usuario_url(usuario, format: :json)
end
