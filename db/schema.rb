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

ActiveRecord::Schema.define(version: 20170425202859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.string   "customer_name"
    t.date     "date"
    t.integer  "employee_id"
    t.integer  "activity_id"
    t.decimal  "price",         precision: 8, scale: 2
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "timeslot_id"
    t.index ["activity_id"], name: "index_appointments_on_activity_id", using: :btree
    t.index ["employee_id"], name: "index_appointments_on_employee_id", using: :btree
    t.index ["timeslot_id"], name: "index_appointments_on_timeslot_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "last_name"
  end

  create_table "timeslots", force: :cascade do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "activities"
  add_foreign_key "appointments", "employees"
  add_foreign_key "appointments", "timeslots"
end
