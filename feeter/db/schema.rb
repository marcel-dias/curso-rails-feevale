# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150523170012) do

  create_table "categories", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noticias", force: :cascade do |t|
    t.string   "titulo"
    t.string   "conteudo"
    t.string   "autor"
    t.string   "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testes", force: :cascade do |t|
    t.string   "nome"
    t.string   "idade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "texto"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tweets", ["usuario_id"], name: "index_tweets_on_usuario_id"

  create_table "usuario_categories", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "category_id"
    t.string   "papel"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "usuario_categories", ["category_id"], name: "index_usuario_categories_on_category_id"
  add_index "usuario_categories", ["usuario_id"], name: "index_usuario_categories_on_usuario_id"

  create_table "usuario_seguidores", force: :cascade do |t|
    t.integer  "seguidor_id"
    t.integer  "seguido_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "usuario_seguidores", ["seguido_id"], name: "index_usuario_seguidores_on_seguido_id"
  add_index "usuario_seguidores", ["seguidor_id"], name: "index_usuario_seguidores_on_seguidor_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
