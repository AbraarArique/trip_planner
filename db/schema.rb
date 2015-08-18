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

ActiveRecord::Schema.define(version: 20150713083816) do

  create_table "days", force: :cascade do |t|
    t.integer  "day",        limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name",         limit: 255,   null: false
    t.string   "location",     limit: 255,   null: false
    t.integer  "lat",          limit: 4,     null: false
    t.integer  "long",         limit: 4,     null: false
    t.text     "description",  limit: 65535
    t.string   "url",          limit: 255
    t.integer  "trip_plan_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "places", ["trip_plan_id"], name: "index_places_on_trip_plan_id", using: :btree

  create_table "trip_plans", force: :cascade do |t|
    t.string   "title",      limit: 255,   null: false
    t.integer  "date",       limit: 4,     null: false
    t.string   "time",       limit: 255,   null: false
    t.string   "duration",   limit: 255,   null: false
    t.text     "notes",      limit: 65535
    t.integer  "day_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "trip_plans", ["day_id"], name: "index_trip_plans_on_day_id", using: :btree

end
