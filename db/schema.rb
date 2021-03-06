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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120819212441) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "early_price"
    t.date     "early_date"
    t.date     "date"
    t.integer  "regular_price"
    t.date     "regular_date"
    t.integer  "late_price"
    t.string   "tbd_info"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "url"
    t.string   "location"
    t.float    "distance"
    t.string   "measure"
    t.boolean  "bonus"
    t.boolean  "tentative"
  end

  create_table "results", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.string   "time"
    t.string   "place"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "gun_mm"
    t.integer  "gun_ss"
    t.integer  "chip_mm"
    t.integer  "chip_ss"
    t.text     "notes"
    t.integer  "age_place"
    t.boolean  "race_again"
    t.text     "survey"
    t.integer  "chip_time"
    t.integer  "gun_time"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.text     "bio"
    t.string   "goal"
    t.string   "title"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "admin"
    t.integer  "fivek_goal_mm"
    t.integer  "fivek_goal_ss"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
