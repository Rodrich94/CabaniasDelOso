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

ActiveRecord::Schema.define(version: 20160722231810) do

  create_table "cabin_state_ranges", force: true do |t|
    t.date     "from"
    t.date     "to"
    t.integer  "cabin_id"
    t.integer  "cabin_state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cabin_state_ranges", ["cabin_id"], name: "index_cabin_state_ranges_on_cabin_id", using: :btree
  add_index "cabin_state_ranges", ["cabin_state_id"], name: "index_cabin_state_ranges_on_cabin_state_id", using: :btree

  create_table "cabin_states", force: true do |t|
    t.string   "state"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cabin_states", ["color_id"], name: "index_cabin_states_on_color_id", using: :btree

  create_table "cabins", force: true do |t|
    t.integer  "number"
    t.string   "description"
    t.integer  "cabin_state_range_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cabins", ["cabin_state_range_id"], name: "index_cabins_on_cabin_state_range_id", using: :btree

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: true do |t|
    t.decimal  "price",      precision: 10, scale: 2
    t.date     "from"
    t.date     "to"
    t.integer  "cabin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prices", ["cabin_id"], name: "index_prices_on_cabin_id", using: :btree

  create_table "reservation_states", force: true do |t|
    t.string   "state"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservation_states", ["color_id"], name: "index_reservation_states_on_color_id", using: :btree

  create_table "reservations", force: true do |t|
    t.date     "from"
    t.date     "to"
    t.integer  "pax"
    t.integer  "client_id"
    t.integer  "cabin_id"
    t.integer  "reservation_state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["cabin_id"], name: "index_reservations_on_cabin_id", using: :btree
  add_index "reservations", ["client_id"], name: "index_reservations_on_client_id", using: :btree
  add_index "reservations", ["reservation_state_id"], name: "index_reservations_on_reservation_state_id", using: :btree

end
