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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130515133445) do

  create_table "cidades", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "lat"
    t.string   "long"
  end

  create_table "coletas", :force => true do |t|
    t.integer  "pessoa_id"
    t.integer  "escola_id"
    t.string   "local"
    t.string   "classe_coname"
    t.datetime "hora_coleta"
    t.string   "condicoes_climaticas"
    t.decimal  "temperatura_agua"
    t.decimal  "temperatura_ambiente"
    t.decimal  "oxigenio_dissolvido"
    t.decimal  "ph"
    t.decimal  "amonia"
    t.decimal  "ferro"
    t.decimal  "dureza"
    t.decimal  "fosfato"
    t.decimal  "cloro"
    t.decimal  "turbidez"
    t.decimal  "cloretos"
    t.decimal  "dqo_campo"
    t.decimal  "coliformes"
    t.decimal  "dbo"
    t.decimal  "detergentes"
    t.boolean  "algas"
    t.boolean  "espuma"
    t.boolean  "corpos_flutuantes"
    t.boolean  "materialsedimentavel"
    t.boolean  "cheiro"
    t.boolean  "plantas_aquaticas"
    t.boolean  "peixes_animais"
    t.boolean  "cobertura_vegetal"
    t.text     "info"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.text     "participantes"
    t.string   "responsavel"
  end

  add_index "coletas", ["escola_id"], :name => "index_coletas_on_escola_id"

  create_table "escolas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "trecho_rio"
    t.string   "regiao_hidrografica"
    t.string   "comite_bacia"
    t.string   "lat"
    t.string   "long"
    t.string   "comite_bacia_url"
    t.text     "info"
    t.integer  "cidade_id"
  end

  create_table "escolas_pessoas", :force => true do |t|
    t.integer "pessoa_id"
    t.integer "escola_id"
  end

  add_index "escolas_pessoas", ["escola_id"], :name => "index_escolas_pessoas_on_escola_id"
  add_index "escolas_pessoas", ["pessoa_id"], :name => "index_escolas_pessoas_on_pessoa_id"

  create_table "midia", :force => true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.integer  "mediable_id"
    t.string   "mediable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "monitores_escolas", :force => true do |t|
    t.integer "pessoa_id"
    t.integer "escola_id"
  end

  create_table "noticia", :force => true do |t|
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
    t.string   "titulo"
    t.text     "texto"
    t.string   "urlized"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "pessoas", :force => true do |t|
    t.string   "nome"
    t.string   "senha"
    t.boolean  "is_monitor"
    t.boolean  "is_admin"
    t.string   "email"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

# Could not dump table "sobres" because of following StandardError
#   Unknown type 'attachment' for column 'execucao'

end
