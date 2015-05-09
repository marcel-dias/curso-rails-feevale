class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :codigo
      t.string :nome
      t.string :uf
      t.integer :nota

      t.timestamps null: false
    end
  end
end
