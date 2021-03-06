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

ActiveRecord::Schema.define(version: 20140528192655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "age"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "idnumber"
    t.integer  "estrato"
    t.string   "phone_number"
    t.string   "occupation"
    t.string   "address"
  end

  add_index "clients", ["idnumber"], name: "index_clients_on_idnumber", unique: true, using: :btree

  create_table "requests", force: true do |t|
    t.integer  "requester_id"
    t.integer  "requested_id"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "pleas"
    t.string   "appendices_file_name"
    t.string   "appendices_content_type"
    t.integer  "appendices_file_size"
    t.datetime "appendices_updated_at"
    t.string   "proofs_file_name"
    t.string   "proofs_content_type"
    t.integer  "proofs_file_size"
    t.datetime "proofs_updated_at"
  end

  add_index "requests", ["requested_id"], name: "index_requests_on_requested_id", using: :btree
  add_index "requests", ["requester_id"], name: "index_requests_on_requester_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
