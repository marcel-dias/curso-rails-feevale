class CreateUsuarioSeguidores < ActiveRecord::Migration
  def change
    create_table :usuario_seguidores do |t|
      t.references :seguidor, index: true, foreign_key: true
      t.references :seguido, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
