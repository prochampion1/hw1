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

ActiveRecord::Schema.define(version: 20161017141351) do

  create_table "fooditems", force: :cascade do |t|
    t.text     "description"
    t.string   "name"
    t.float    "price"
    t.string   "ima_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "section"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "fooditem_id"
    t.string   "name"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["fooditem_id"], name: "index_orders_on_fooditem_id"
  end

  create_table "sections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "sort_bies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
