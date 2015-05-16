class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.string :conteudo
      t.string :autor
      t.string :tags

      t.timestamps null: false
    end
  end
end
