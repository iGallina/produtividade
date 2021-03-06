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

ActiveRecord::Schema.define(version: 20131209200728) do

  create_table "entrantes", force: true do |t|
    t.string   "prot_doc"
    t.string   "dt_prot_doc"
    t.string   "assunto"
    t.string   "procedimento"
    t.string   "processo_principal"
    t.string   "dt_procedimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",            default: false, null: false
    t.datetime "deleted_at"
  end

  create_table "nota_tecnicas", force: true do |t|
    t.string   "data_nota"
    t.string   "numero_nota"
    t.string   "numero_processo"
    t.string   "status"
    t.string   "nome_do_analista"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",          default: false, null: false
    t.datetime "deleted_at"
  end

  create_table "notas_tecnicas", force: true do |t|
    t.string   "exit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renomears", force: true do |t|
    t.string   "tipo"
    t.string   "assunto"
    t.datetime "data"
    t.string   "cprod"
    t.boolean  "sem_cprod"
    t.boolean  "mais_de_um_processo"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
