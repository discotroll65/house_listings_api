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

ActiveRecord::Schema.define(version: 20150725192206) do

  create_table "houses", force: :cascade do |t|
    t.string   "street",     null: false
    t.integer  "status_id",  null: false
    t.integer  "price",      null: false
    t.integer  "bedrooms",   null: false
    t.integer  "bathrooms",  null: false
    t.integer  "sq_ft",      null: false
    t.decimal  "lat",        null: false
    t.decimal  "lng",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "houses", ["bathrooms"], name: "index_houses_on_bathrooms"
  add_index "houses", ["bedrooms"], name: "index_houses_on_bedrooms"
  add_index "houses", ["lat", "lng"], name: "index_houses_on_lat_and_lng", unique: true
  add_index "houses", ["price"], name: "index_houses_on_price"
  add_index "houses", ["sq_ft"], name: "index_houses_on_sq_ft"
  add_index "houses", ["status_id"], name: "index_houses_on_status_id"

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statuses", ["name"], name: "index_statuses_on_name", unique: true

end
