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

ActiveRecord::Schema.define(:version => 20130413003924) do

  create_table "charges", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "guest_infos", :force => true do |t|
    t.boolean  "first_time"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.integer  "age"
    t.string   "ticket"
    t.string   "phone"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "trip_id"
    t.boolean  "checked_in_morning"
    t.boolean  "checked_in_afternoon"
  end

  create_table "trips", :force => true do |t|
    t.string   "name"
    t.date     "departure_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "bus_number"
  end

end
