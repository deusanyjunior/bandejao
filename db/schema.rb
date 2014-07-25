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

ActiveRecord::Schema.define(:version => 20140418061014) do

  create_table "campusunits", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", :force => true do |t|
    t.string   "name"
    t.string   "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.date     "day"
    t.integer  "restaurant_id"
    t.integer  "meal_id"
    t.text     "options"
    t.string   "kcal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menuscomments", :force => true do |t|
    t.integer  "menu_id"
    t.string   "commenter"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.integer  "placescategory_id"
    t.string   "name"
    t.string   "address"
    t.string   "tel"
    t.string   "latitude"
    t.string   "longitude"
    t.text     "metatags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "placescategories", :force => true do |t|
    t.integer  "campusunit_id"
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurantopeninghours", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "meal_id"
    t.integer  "wday"
    t.string   "open"
    t.string   "close"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "place_id
    t.string   "name",       :null => false
    t.string   "address"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
