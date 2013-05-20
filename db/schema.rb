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

ActiveRecord::Schema.define(:version => 20130325112500) do

  create_table "award_rules", :force => true do |t|
    t.string   "award"
    t.integer  "rule"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "awards", :force => true do |t|
    t.boolean  "water_bottle"
    t.boolean  "race_hat"
    t.boolean  "green_star"
    t.boolean  "red_star"
    t.boolean  "blue_star"
    t.boolean  "gold_star"
    t.boolean  "shoe"
    t.boolean  "rising_star"
    t.boolean  "excellence"
    t.boolean  "number_1"
    t.boolean  "bolder_boulder"
    t.boolean  "non_stop_2"
    t.boolean  "non_stop_4"
    t.boolean  "non_stop_6"
    t.integer  "student_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "coaches", :force => true do |t|
    t.string   "coach_first_name"
    t.string   "coach_last_name"
    t.integer  "teacher_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "families", :force => true do |t|
    t.string   "parent_first_name"
    t.string   "parent_last_name"
    t.string   "chaperone_first_name"
    t.string   "chaperone_last_name"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "work_phone"
    t.string   "email"
    t.boolean  "signature"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "mileage_logs", :force => true do |t|
    t.integer  "miles_monday"
    t.integer  "miles_wednesday"
    t.integer  "miles_rest_of_week"
    t.boolean  "attendance_monday"
    t.boolean  "attendance_wednesday"
    t.integer  "student_id"
    t.integer  "week_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "prices", :force => true do |t|
    t.string   "item"
    t.string   "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registrations", :force => true do |t|
    t.integer  "registration_num"
    t.integer  "tshirt_num"
    t.integer  "pp_member_num"
    t.integer  "pp_nonmember_num"
    t.integer  "pp_child_num"
    t.boolean  "conduct_code"
    t.boolean  "field_trip_form"
    t.integer  "family_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "student_first_name"
    t.string   "student_last_name"
    t.integer  "family_id"
    t.integer  "teacher_id"
    t.integer  "coach_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "letter_code"
    t.string   "grade"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "isadmin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "weeks", :force => true do |t|
    t.string   "week_number"
    t.string   "week_dates"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
