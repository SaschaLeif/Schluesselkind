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

ActiveRecord::Schema.define(:version => 20120701144800) do

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.string   "article_url"
    t.integer  "size_id"
    t.integer  "color_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.string   "origin"
    t.string   "logo_url"
    t.decimal  "rating",     :precision => 2, :scale => 2
    t.text     "info_text"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "custom_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "print_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "quantity",   :default => 1
    t.integer  "order_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "email"
    t.string   "pay_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prints", :force => true do |t|
    t.decimal  "print_price", :precision => 8, :scale => 2
    t.string   "name"
    t.string   "print_url"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "products", :force => true do |t|
    t.decimal  "product_price", :precision => 8, :scale => 2
    t.integer  "brand_id"
    t.integer  "article_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
