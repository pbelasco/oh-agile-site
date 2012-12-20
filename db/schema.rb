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

ActiveRecord::Schema.define(:version => 20121212004159) do

  create_table "locais", :force => true do |t|
    t.string   "nome"
    t.float    "lat"
    t.float    "lon"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "rua"
    t.string   "numero"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "to_locais", :force => true do |t|
    t.integer  "local_id"
    t.integer  "viagem_id"
    t.integer  "user_id"
    t.integer  "tripulante_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "to_locais", ["local_id"], :name => "index_to_locais_on_local_id"
  add_index "to_locais", ["tripulante_id"], :name => "index_to_locais_on_tripulante_id"
  add_index "to_locais", ["user_id"], :name => "index_to_locais_on_user_id"
  add_index "to_locais", ["viagem_id"], :name => "index_to_locais_on_viagem_id"

  create_table "viagens", :force => true do |t|
    t.string   "titulo"
    t.integer  "origem_id"
    t.integer  "destino_id"
    t.integer  "distancia"
    t.date     "saida"
    t.date     "retorno"
    t.integer  "motora_id"
    t.float    "valor_contrato"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "viagens", ["destino_id"], :name => "index_viagens_on_destino_id"
  add_index "viagens", ["origem_id"], :name => "index_viagens_on_origem_id"

end
