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

ActiveRecord::Schema.define(version: 20160808185119) do

  create_table "breakfast_orders", force: :cascade do |t|
    t.string   "customer_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dinner_orders", force: :cascade do |t|
    t.string   "customer_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "dish_name"
    t.string   "price"
    t.integer  "dishable_id"
    t.string   "dishable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["dishable_type", "dishable_id"], name: "index_dishes_on_dishable_type_and_dishable_id"
  end

  create_table "lunch_orders", force: :cascade do |t|
    t.string   "customer_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
