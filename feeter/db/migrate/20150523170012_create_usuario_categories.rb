class CreateUsuarioCategories < ActiveRecord::Migration
  def change
    create_table :usuario_categories do |t|
      t.references :usuario, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.string :papel

      t.timestamps null: false
    end
  end
end
