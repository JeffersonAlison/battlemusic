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

ActiveRecord::Schema.define(:version => 20140503052922) do

  create_table "rooms", :force => true do |t|
    t.string   "name"
    t.integer  "type"
    t.integer  "tool_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rooms", ["tool_id"], :name => "index_rooms_on_tool_id"
  add_index "rooms", ["user_id"], :name => "index_rooms_on_user_id"

  create_table "tools", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",                   :default => "",   :null => false
    t.string   "email",                  :default => "",   :null => false
    t.string   "login",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "url_image",              :default => "",   :null => false
    t.datetime "date_birth"
    t.string   "facebook",               :default => "",   :null => false
    t.string   "twitter",                :default => "",   :null => false
    t.integer  "level",                  :default => 1,    :null => false
    t.integer  "nivel",                  :default => 1,    :null => false
    t.integer  "experience",             :default => 0,    :null => false
    t.boolean  "visible_data",           :default => true
    t.boolean  "enable",                 :default => true
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "users", ["date_birth"], :name => "index_users_on_date_birth"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["enable"], :name => "index_users_on_enable"
  add_index "users", ["experience"], :name => "index_users_on_experience"
  add_index "users", ["facebook"], :name => "index_users_on_facebook"
  add_index "users", ["level"], :name => "index_users_on_level"
  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  add_index "users", ["name"], :name => "index_users_on_name"
  add_index "users", ["nivel"], :name => "index_users_on_nivel"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["twitter"], :name => "index_users_on_twitter"
  add_index "users", ["url_image"], :name => "index_users_on_url_image"
  add_index "users", ["visible_data"], :name => "index_users_on_visible_data"

end
