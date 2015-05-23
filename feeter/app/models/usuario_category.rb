class UsuarioCategory < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :category
end
