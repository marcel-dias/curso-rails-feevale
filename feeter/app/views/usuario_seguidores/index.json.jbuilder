json.array!(@usuario_seguidores) do |usuario_seguidor|
  json.extract! usuario_seguidor, :id, :seguidor_id, :seguido_id
  json.url usuario_seguidor_url(usuario_seguidor, format: :json)
end
