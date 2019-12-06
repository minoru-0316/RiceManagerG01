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

ActiveRecord::Schema.define(version: 2019_12_06_062514) do

  create_table "cliants", force: :cascade do |t|
    t.integer "user_id"
    t.string "cliant_name"
    t.string "cliant_officer"
    t.string "cliant_email"
    t.decimal "cliant_tel"
    t.string "cliant_address"
    t.float "cliant_map_latitude"
    t.float "cliant_map_longitude"
    t.text "cliant_map_code"
    t.string "cliant_type"
    t.date "cliant_start_trading"
    t.text "cliant_memorandum"
    t.string "cliant_delivery_type"
    t.integer "cliant_postage"
    t.text "cliant_postage_memorandum"
    t.integer "cliant_total_sales_without_tax"
    t.integer "cliant_total_sales_tax_included"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", force: :cascade do |t|
    t.string "farmer_name"
    t.string "farmer_email"
    t.decimal "farmer_tel"
    t.string "farmer_area"
    t.string "farmer_address"
    t.float "farmer_map_latitude"
    t.float "farmer_map_longitude"
    t.text "farmer_map_code"
    t.text "farmer_memorandum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_sales", force: :cascade do |t|
    t.integer "item_id"
    t.integer "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "user_id"
    t.string "item_name"
    t.integer "item_price_without_tax"
    t.integer "item_price_tax_included"
    t.text "item_memorandum"
    t.integer "item_shipment_total"
    t.integer "item_total_sales_without_tax"
    t.integer "item_total_sales_tax_included"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "polish_id"
  end

  create_table "polishes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "polish_amount_total"
    t.integer "farmer_id"
    t.integer "polish_1_farmer_id"
    t.string "polish_1_farmer"
    t.integer "polish_2_farmer_id"
    t.string "polish_2_farmer"
    t.integer "polish_3_farmer_id"
    t.string "polish_3_farmer"
    t.integer "polish_4_farmer_id"
    t.string "polish_4_farmer"
    t.integer "polish_5_farmer_id"
    t.string "polish_5_farmer"
    t.text "polish_memorandum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "polish_1_brand"
    t.string "polish_2_brand"
    t.string "polish_3_brand"
    t.string "polish_4_brand"
    t.string "polish_5_brand"
    t.string "polish_1_amount"
    t.string "polish_2_amount"
    t.string "polish_3_amount"
    t.string "polish_4_amount"
    t.string "polish_5_amount"
    t.date "polish_day"
    t.integer "stock_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "user_id"
    t.string "job_type"
    t.string "cliant_name"
    t.integer "cliant_id"
    t.string "material_infomation"
    t.string "item_name"
    t.integer "sale_item_count"
    t.integer "sale_item_amount"
    t.integer "polish_id"
    t.integer "item_id"
    t.text "sale_memorandum"
    t.datetime "start_time"
    t.string "sale_job_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "seller_name"
    t.boolean "is_done", default: false, null: false
  end

  create_table "stock_polishes", force: :cascade do |t|
    t.integer "stock_id"
    t.integer "polish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "polish_id"
    t.string "stock_farmer_name"
    t.integer "farmer_id"
    t.string "stock_brand"
    t.integer "stock_purchased_amount"
    t.integer "stock_used_amount"
    t.integer "stock_present_amount"
    t.integer "stock_price_without_tax"
    t.integer "stock_price_tax_included"
    t.string "stock_quality"
    t.text "stock_memorandum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "stock_arrivalday"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
