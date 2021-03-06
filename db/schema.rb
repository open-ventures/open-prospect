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

ActiveRecord::Schema.define(version: 20160702221522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "motto"
    t.string   "founded"
    t.integer  "seeking"
    t.integer  "raised"
    t.string   "tag"
    t.string   "industry"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "no_of_employees"
    t.string   "no_of_founders"
    t.string   "fundraising_amount"
    t.string   "company_website"
    t.text     "description"
    t.text     "readiness"
    t.text     "projections"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "angellist"
    t.string   "growth_projections"
    t.string   "geography"
    t.string   "product_stage"
    t.text     "vision"
    t.text     "problem"
    t.text     "solution"
    t.text     "impact"
  end

  create_table "investments", force: :cascade do |t|
    t.string   "title"
    t.integer  "size"
    t.text     "description"
    t.integer  "type"
    t.integer  "revenue_share"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "company_id"
    t.string   "industry"
    t.string   "stage"
    t.string   "location"
    t.integer  "expected_return"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
    t.string   "type"
    t.string   "profile"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
