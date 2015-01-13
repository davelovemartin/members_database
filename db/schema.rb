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

ActiveRecord::Schema.define(:version => 20150113110809) do

  create_table "members", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "post_code"
    t.string   "home_telephone_number"
    t.string   "mobile_telephone_number"
    t.string   "email"
    t.string   "website"
    t.string   "age_group"
    t.string   "term_address"
    t.string   "term_post_code"
    t.boolean  "coffee"
    t.boolean  "projector"
    t.boolean  "data_collection"
    t.boolean  "stewarding"
    t.boolean  "picture_hanging"
    t.boolean  "portering"
    t.boolean  "general"
    t.boolean  "website_social_media"
    t.boolean  "painting_sessions"
    t.boolean  "committee_member"
    t.boolean  "general_help"
    t.boolean  "online_and_email"
    t.boolean  "post"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
