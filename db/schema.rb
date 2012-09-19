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

ActiveRecord::Schema.define(:version => 20120919023059) do

  create_table "display_events", :force => true do |t|
    t.integer  "event_id"
    t.integer  "display_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "display_events", ["display_id"], :name => "index_display_events_on_display_id"
  add_index "display_events", ["event_id"], :name => "index_display_events_on_event_id"

  create_table "displays", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "slide_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.string   "image"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "show_flags"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "show_times", :force => true do |t|
    t.integer  "priority"
    t.time     "end_time"
    t.time     "start_time"
    t.integer  "slide_set_id"
    t.integer  "display_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "slide_orders", :force => true do |t|
    t.integer  "order"
    t.integer  "slide_id"
    t.integer  "slide_set_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "slide_orders", ["slide_id"], :name => "index_slide_orders_on_slide_id"
  add_index "slide_orders", ["slide_set_id"], :name => "index_slide_orders_on_slide_set_id"

  create_table "slide_sets", :force => true do |t|
    t.boolean  "random"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "slides", :force => true do |t|
    t.string   "picture_file"
    t.string   "origninal_file"
    t.string   "title"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "content"
  end

end
