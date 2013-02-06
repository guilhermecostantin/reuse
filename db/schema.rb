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

ActiveRecord::Schema.define(:version => 20130205224908) do

  create_table "cook_books", :force => true do |t|
    t.string   "nome"
    t.string   "tema"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "receita", :force => true do |t|
    t.integer  "id_post"
    t.string   "titulo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "redes", :force => true do |t|
    t.float    "peso1"
    t.float    "peso2"
    t.float    "peso3"
    t.float    "peso4"
    t.float    "peso5"
    t.integer  "epocas"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "treinamentos", :force => true do |t|
    t.float    "entrada1"
    t.float    "entrada2"
    t.float    "entrada3"
    t.float    "entrada4"
    t.float    "entrada5"
    t.integer  "target"
    t.datetime "updated_at"
  end

  create_table "validacoes", :force => true do |t|
    t.float    "entrada1"
    t.float    "entrada2"
    t.float    "entrada3"
    t.float    "entrada4"
    t.float    "entrada5"
    t.integer  "target"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
