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

ActiveRecord::Schema.define(version: 20140815141120) do

  create_table "institutions", primary_key: "false", force: true do |t|
    t.string  "facility_code",          null: false
    t.string  "institution"
    t.string  "city"
    t.string  "state"
    t.string  "country"
    t.integer "bah"
    t.boolean "poe"
    t.boolean  "yr"
    t.integer "gibill"
    t.integer "cross"
    t.decimal "grad_rate"
    t.integer "grad_rate_rank"
    t.decimal "default_rate"
    t.integer "avg_stu_loan_debt"
    t.integer "avg_stu_loan_debt_rank"
    t.integer "indicator_group"
    t.string  "salary"
    t.string  "zip"
    t.string  "ope"
    t.boolean "correspondence"
    t.boolean "flight"
    t.string  "calendar"
    t.integer "tuition_in_state"
    t.integer "tuition_out_of_state"
    t.string  "student_veteran"
    t.string  "student_veteran_link"
    t.string  "vetsuccess_name"
    t.string  "vetsuccess_email"
    t.boolean "gijobs"
  end

end
