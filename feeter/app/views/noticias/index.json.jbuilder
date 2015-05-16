json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :titulo, :conteudo, :autor, :tags
  json.url noticia_url(noticia, format: :json)
end
