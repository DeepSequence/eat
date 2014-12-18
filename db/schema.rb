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

ActiveRecord::Schema.define(version: 20141218044639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.string   "name_of_event",                 null: false
    t.datetime "event_date"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "cancelled",     default: false
  end

  create_table "events_users", force: true do |t|
    t.integer  "user_id",              null: false
    t.integer  "event_id",             null: false
    t.boolean  "attending"
    t.boolean  "selected_preferences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_users_features", force: true do |t|
    t.integer  "events_user_id", null: false
    t.integer  "feature_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features_restaurants", force: true do |t|
    t.integer  "feature_id",                    null: false
    t.integer  "restaurant_id",                 null: false
    t.boolean  "value",         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name",         null: false
    t.string   "address"
    t.string   "url"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",            null: false
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
