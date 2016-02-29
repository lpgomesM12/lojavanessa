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

ActiveRecord::Schema.define(version: 20160226120017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoriaprodutos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cors", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exemplaresprodutos", force: :cascade do |t|
    t.integer  "numr_numeracao"
    t.integer  "numr_quantidade"
    t.integer  "produto_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "exemplaresprodutos", ["produto_id"], name: "index_exemplaresprodutos_on_produto_id", using: :btree

  create_table "fotoprodutos", force: :cascade do |t|
    t.integer  "produto_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "fotoprodutos", ["produto_id"], name: "index_fotoprodutos_on_produto_id", using: :btree

  create_table "produtos", force: :cascade do |t|
    t.string   "nome_produto"
    t.string   "desc_produto"
    t.decimal  "valr_compra"
    t.decimal  "valr_sugeridovenda"
    t.integer  "categoriaproduto_id"
    t.integer  "cor_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "produtos", ["categoriaproduto_id"], name: "index_produtos_on_categoriaproduto_id", using: :btree
  add_index "produtos", ["cor_id"], name: "index_produtos_on_cor_id", using: :btree

  add_foreign_key "exemplaresprodutos", "produtos"
  add_foreign_key "fotoprodutos", "produtos"
  add_foreign_key "produtos", "categoriaprodutos"
  add_foreign_key "produtos", "cors"
end
