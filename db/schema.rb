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

ActiveRecord::Schema.define(version: 20160209175321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candlesticks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "knives", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "murderings", force: :cascade do |t|
    t.integer  "murderer_id",     null: false
    t.integer  "victim_id",       null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "weaponable_id"
    t.string   "weaponable_type"
  end

  add_index "murderings", ["murderer_id", "victim_id"], name: "index_murderings_on_murderer_id_and_victim_id", unique: true, using: :btree
  add_index "murderings", ["weaponable_type", "weaponable_id"], name: "index_murderings_on_weaponable_type_and_weaponable_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
