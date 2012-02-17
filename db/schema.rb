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

ActiveRecord::Schema.define(:version => 20120206195615) do

  create_table "bookings", :force => true do |t|
    t.datetime "date_of_departure"
    t.datetime "date_of_arrival"
    t.boolean  "collect"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "car_class"
    t.string   "booking_address"
    t.string   "booking_postcode"
    t.string   "promocode"
  end

  create_table "cars", :force => true do |t|
    t.string   "reg"
    t.string   "model"
    t.string   "class"
    t.boolean  "repair"
    t.integer  "booking_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "customers", ["user_id"], :name => "index_customers_on_user_id"

  create_table "payements", :force => true do |t|
    t.integer  "amount"
    t.string   "payement_type"
    t.integer  "booking_id"
    t.datetime "payement_date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "is_admin"
  end

end
