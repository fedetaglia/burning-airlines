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

ActiveRecord::Schema.define(version: 20140314034957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplanes", force: true do |t|
    t.string   "name"
    t.integer  "rows"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "columns"
  end

  create_table "flights", force: true do |t|
    t.integer  "number"
    t.string   "origin"
    t.string   "destination"
    t.datetime "date"
    t.integer  "airplane_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "flights", ["airplane_id"], name: "index_flights_on_airplane_id", using: :btree

  create_table "reservations", force: true do |t|
    t.integer  "flight_id"
    t.integer  "user_id"
    t.integer  "row"
    t.string   "column"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seats", force: true do |t|
    t.integer "row"
    t.integer "column"
    t.integer "flight_id"
    t.integer "user_id"
    t.string  "reseverd",  default: "free"
  end

  add_index "seats", ["flight_id"], name: "index_seats_on_flight_id", using: :btree
  add_index "seats", ["user_id"], name: "index_seats_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "role"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
