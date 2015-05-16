class UsuarioSeguidor < ActiveRecord::Base
  belongs_to :seguidor, :class_name => "Usuario"
  belongs_to :seguido, :class_name => "Usuario"
end
