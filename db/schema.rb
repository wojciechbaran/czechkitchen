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

ActiveRecord::Schema.define(version: 20170125153628) do

  create_table "admins", force: :cascade do |t|
    t.string   "login"
    t.string   "encrypted_password"
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "food_type"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_foods", force: :cascade do |t|
    t.string   "food_name"
    t.integer  "amount"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_foods_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "street"
    t.string   "number"
    t.string   "city"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
