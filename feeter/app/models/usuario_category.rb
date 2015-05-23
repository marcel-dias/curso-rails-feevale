class UsuarioCategory < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :category

  validates_presence_of :usuario
end
