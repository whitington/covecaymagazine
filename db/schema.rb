# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090115222634) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.text     "body"
    t.date     "publish_date"
    t.integer  "user_id",      :limit => 11
    t.integer  "category_id",  :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "covecaysales", :force => true do |t|
    t.string   "parcel_number"
    t.string   "property_address"
    t.string   "condo_name"
    t.string   "sale_date"
    t.integer  "sale_price",       :limit => 11
    t.integer  "year_built",       :limit => 11
    t.integer  "sq_ft",            :limit => 11
    t.integer  "land_use_id",      :limit => 11
    t.integer  "subdivision_id",   :limit => 11
    t.string   "cc_village"
    t.string   "cc_building"
    t.string   "cc_unit"
    t.integer  "sale_month",       :limit => 11
    t.integer  "sale_year",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end