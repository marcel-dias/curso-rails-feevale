class Category < ActiveRecord::Base
  validates_presence_of :nome

  has_many :usuario_categories
  has_many :usuarios, :through => :usuario_categories

  accepts_nested_attributes_for :usuario_categories,
  :allow_destroy => true
end
