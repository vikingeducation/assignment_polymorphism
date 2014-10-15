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

ActiveRecord::Schema.define(version: 20141015044829) do

  create_table "cones", force: true do |t|
    t.string   "sizing"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cups", force: true do |t|
    t.string   "sizing",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ice_cream_scoops", force: true do |t|
    t.string   "flavor"
    t.integer  "container_id"
    t.string   "container_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ice_cream_scoops", ["container_type", "container_id"], name: "index_ice_cream_scoops_on_container_type_and_container_id"

end
