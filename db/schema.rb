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

ActiveRecord::Schema.define(:version => 20120522192726) do

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
  end

end
