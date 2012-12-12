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

ActiveRecord::Schema.define(:version => 20121212054118) do

  create_table "action_points", :force => true do |t|
    t.integer  "meeting_id"
    t.text     "name"
    t.date     "due_date"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "status",     :default => "Due"
  end

  add_index "action_points", ["meeting_id"], :name => "index_action_points_on_meeting_id"

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "name",                   :default => "", :null => false
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "competencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dailies", :force => true do |t|
    t.integer  "task_id"
    t.integer  "employee_id"
    t.date     "due_date"
    t.date     "completion_date"
    t.string   "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "employee_competencies", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "competency_id"
    t.integer  "handicap"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "employee_competencies", ["competency_id"], :name => "index_employee_competencies_on_competency_id"
  add_index "employee_competencies", ["employee_id"], :name => "index_employee_competencies_on_employee_id"

  create_table "employees", :force => true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "admin_user_id"
    t.boolean  "onrolls"
  end

  add_index "employees", ["company_id"], :name => "index_employees_on_company_id"

  create_table "meetings", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "company_id"
    t.integer  "product_id"
    t.text     "description"
    t.date     "meeting_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "meetings", ["company_id"], :name => "index_meetings_on_company_id"
  add_index "meetings", ["employee_id"], :name => "index_meetings_on_employee_id"
  add_index "meetings", ["product_id"], :name => "index_meetings_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sub_task_competencies", :force => true do |t|
    t.integer  "sub_task_id"
    t.integer  "competency_id"
    t.string   "value"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "sub_task_competencies", ["competency_id"], :name => "index_sub_task_competencies_on_competency_id"
  add_index "sub_task_competencies", ["sub_task_id"], :name => "index_sub_task_competencies_on_sub_task_id"

  create_table "sub_task_masters", :force => true do |t|
    t.string   "name"
    t.integer  "competency_id"
    t.string   "typical"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "sub_task_masters", ["competency_id"], :name => "index_sub_task_masters_on_competency_id"

  create_table "sub_tasks", :force => true do |t|
    t.integer  "daily_id"
    t.integer  "sub_task_master_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "status",             :default => "Due"
  end

  add_index "sub_tasks", ["daily_id"], :name => "index_sub_tasks_on_daily_id"
  add_index "sub_tasks", ["sub_task_master_id"], :name => "index_sub_tasks_on_sub_task_master_id"

  create_table "task_masters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "action_point_id"
    t.integer  "task_master_id"
    t.date     "due_date"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "status",          :default => "Due"
  end

  add_index "tasks", ["action_point_id"], :name => "index_tasks_on_action_point_id"
  add_index "tasks", ["task_master_id"], :name => "index_tasks_on_task_master_id"

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
