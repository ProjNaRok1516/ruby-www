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

ActiveRecord::Schema.define(version: 20160105130624) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "building"
    t.string   "flat"
    t.string   "city"
    t.string   "postalcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.integer  "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clients", ["address_id"], name: "index_clients_on_address_id"

  create_table "dresses", force: :cascade do |t|
    t.string   "name"
    t.decimal  "cost"
    t.integer  "style_id"
    t.integer  "material_id"
    t.integer  "order_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dresses", ["material_id"], name: "index_dresses_on_material_id"
  add_index "dresses", ["order_id"], name: "index_dresses_on_order_id"
  add_index "dresses", ["style_id"], name: "index_dresses_on_style_id"

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price_per_m2"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "data"
    t.decimal  "total_cost"
    t.integer  "status"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id"

  create_table "styles", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.decimal  "material_amount"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
