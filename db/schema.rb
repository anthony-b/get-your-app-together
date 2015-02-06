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

ActiveRecord::Schema.define(:version => 20131204233130) do

  create_table "organisations", :force => true do |t|
    t.string   "org_name"
    t.string   "org_description"
    t.string   "org_addressline1"
    t.string   "org_addressline2"
    t.string   "org_addressline3"
    t.string   "org_addresscity"
    t.string   "org_addresspostcode"
    t.string   "org_phonenumber"
    t.string   "org_contactname"
    t.string   "org_website"
    t.string   "org_addedby"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "product_name"
    t.string   "product_description"
    t.string   "product_configs"
    t.string   "product_createdby"
    t.string   "product_orgID"
    t.integer  "product_value"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "organisation_id"
  end

  create_table "task_activities", :force => true do |t|
    t.string   "task_activity_task_title"
    t.string   "task_activity_task_completedby"
    t.string   "task_activity_task_productassignedto"
    t.integer  "ID_task"
    t.string   "time_taken"
    t.string   "notes"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "task_title"
    t.string   "task_description"
    t.boolean  "task_completed"
    t.string   "task_completedby"
    t.string   "task_assignedto"
    t.string   "task_type"
    t.string   "task_createdby"
    t.string   "task_productassignedto"
    t.string   "task_orgassignedto"
    t.string   "ID_org"
    t.string   "ID_product"
    t.integer  "ID_task"
    t.string   "activity_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "_completedby"
    t.integer  "product_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.string   "job_title"
    t.boolean  "is_admin"
    t.boolean  "is_sales"
    t.boolean  "is_finance"
    t.boolean  "is_support"
    t.boolean  "is_development"
    t.integer  "hourly_rate"
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
