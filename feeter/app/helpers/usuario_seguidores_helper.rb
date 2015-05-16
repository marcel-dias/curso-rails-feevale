module UsuarioSeguidoresHelper
  def usuario_select(campo)
    collection_select :usuario_seguidor,
              campo,
              Usuario.all,
              :id,
              :nome
  end
end
