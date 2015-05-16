class Usuario < ActiveRecord::Base
  has_many :segue,
            :class_name => "UsuarioSeguidor",
            :foreign_key => :seguidor_id

  has_many :usuarios_seguidos,
            :through => :segue,
            :source => :seguido

  has_many :timeline,
            :through => :usuarios_seguidos,
            :source => :tweets

  has_many :tweets

  validates_presence_of :nome
end
