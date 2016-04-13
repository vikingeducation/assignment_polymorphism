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

ActiveRecord::Schema.define(version: 20160413020751) do

  create_table "items", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "vendor_type", null: false
    t.integer  "vendor_id",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["vendor_type", "vendor_id"], name: "index_items_on_vendor_type_and_vendor_id"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vending_machines", force: :cascade do |t|
    t.string   "latitude",   null: false
    t.string   "longitude",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
