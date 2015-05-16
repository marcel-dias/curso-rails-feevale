class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :texto
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
