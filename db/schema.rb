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

ActiveRecord::Schema.define(version: 20150916034051) do

  create_table "ap_server_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "department_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_masters", force: :cascade do |t|
    t.integer  "department_master_id"
    t.string   "name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "group_masters", ["department_master_id"], name: "index_group_masters_on_department_master_id"

  create_table "java_name_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "java_version_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "os_name_masters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_infos", force: :cascade do |t|
    t.integer  "system_info_id"
    t.string   "management_number"
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "project_infos", ["system_info_id"], name: "index_project_infos_on_system_info_id"

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_info_id"
    t.integer  "project_info_id"
    t.string   "start_date"
    t.string   "end_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "reservations", ["project_info_id"], name: "index_reservations_on_project_info_id"
  add_index "reservations", ["user_info_id"], name: "index_reservations_on_user_info_id"

  create_table "system_infos", force: :cascade do |t|
    t.string   "management_number"
    t.string   "name"
    t.integer  "os_name_master_id"
    t.integer  "java_name_master_id"
    t.integer  "java_version_master_id"
    t.integer  "ap_server_master_id"
    t.integer  "ap_server_number"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "system_infos", ["ap_server_master_id"], name: "index_system_infos_on_ap_server_master_id"
  add_index "system_infos", ["java_name_master_id"], name: "index_system_infos_on_java_name_master_id"
  add_index "system_infos", ["java_version_master_id"], name: "index_system_infos_on_java_version_master_id"
  add_index "system_infos", ["os_name_master_id"], name: "index_system_infos_on_os_name_master_id"

  create_table "system_requirement_infos", force: :cascade do |t|
    t.integer  "os_name_master_id"
    t.integer  "java_name_master_id"
    t.integer  "java_version_master_id"
    t.integer  "ap_server_master_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "system_requirement_infos", ["ap_server_master_id"], name: "index_system_requirement_infos_on_ap_server_master_id"
  add_index "system_requirement_infos", ["java_name_master_id"], name: "index_system_requirement_infos_on_java_name_master_id"
  add_index "system_requirement_infos", ["java_version_master_id"], name: "index_system_requirement_infos_on_java_version_master_id"
  add_index "system_requirement_infos", ["os_name_master_id"], name: "index_system_requirement_infos_on_os_name_master_id"

  create_table "user_infos", force: :cascade do |t|
    t.integer  "group_master_id"
    t.string   "mail_address"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "user_infos", ["group_master_id"], name: "index_user_infos_on_group_master_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
